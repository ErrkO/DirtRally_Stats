import logging
import json
from functools import wraps
from telegram import (ReplyKeyboardMarkup, ReplyKeyboardRemove)
from telegram.ext import (Updater, CommandHandler, MessageHandler, Filters,
                          ConversationHandler)

# Enable logging
logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                    level=logging.INFO)

logger = logging.getLogger(__name__)

EVENTID,STAGEID = range(2)

vars = json.load(open('Telegram.json','r'))
LIST_OF_ADMINS = vars["ADMINS"]

def restricted(func):
    @wraps(func)
    def wrapped(update,context, *args, **kwargs):
        user_id = update.effective_user.id
        if user_id not in LIST_OF_ADMINS:
            update.message.reply_text("ACCESS DENIED!")
            return
        return func(update,context, *args, **kwargs)
    return wrapped

def GetEventDetails(update,context):
    context.bot.send_message(chat_id=update.message.chat_id, text="Please enter the week number: ")
    return EVENTID

def EventID(update,context):
    id = update.message.text
    reply_str = (#"<pre>\n" +
                 "EventID | Driver |   Stage 01   |   Stage 02   |   Stage 03   |   Stage 04   |   Stage 05   |   Stage 06  " +
                 "\n-------|--------|--------------|--------------|--------------|--------------|--------------|-------------" +
                 "\n   01  |0  Erk  | 00:03:00.000 | 00:03:00.000 | 00:03:00.000 | 00:03:00.000 | 00:03:00.000 | 00:03:00.000"
                 )#+ "\n</pre>")

    #reply_str = '**BOLD**'
    #update.message.reply_text(reply_str)
    context.bot.send_message(chat_id=update.message.chat_id, text=reply_str, parse_mode='Markdown')
    return ConversationHandler.END

def FormatTable(headers,data):
    html = "<table>\n<tr>"

    for header in headers:
        html += "\n<th>" + header + "</th>"
    
    html += "\n</tr>"

    for row in data:
        html += "\n<tr>"
        for item in row:
            html += "\n<td>" + item + "</td>"
        html += "\n</tr>"

    html += "\n</table>"

    return html

@restricted
def CustomeQuery(update,context):
    pass

@restricted
def GetUserID(update,context):
    user_id = update.effective_user.id
    update.message.reply_text(str(user_id) + ": Your user ID")

def Cancel(update,context):
    update.message.reply_text('Bye, BINCH!')
    return ConversationHandler.END

def error(update, context):
    """Log Errors caused by Updates."""
    logger.warning('Update "%s" caused error "%s"', update, context.error)

def Main():

    updater = Updater(vars["TOKEN"], use_context=True)
    dispatcher = updater.dispatcher

    UserID_handler = CommandHandler('getuserid',GetUserID)

    conv_handler = ConversationHandler(

        entry_points = [CommandHandler('geteventdetails', GetEventDetails)],

        states = {

            EVENTID: [MessageHandler(Filters.regex('^\d+$'),EventID)],
            STAGEID: [MessageHandler(Filters.regex('^cancel$'),Cancel),
                                     CommandHandler('cancel',Cancel)]

        },

        fallbacks = [CommandHandler('cancel',Cancel)]

    )
    
    dispatcher.add_handler(conv_handler)
    dispatcher.add_handler(UserID_handler)

    dispatcher.add_error_handler(error)

    #EventDetails_handler = CommandHandler('GetEventDetails', GetEventDetails)
    #dispatcher.add_handler(EventDetails_handler)

    updater.start_polling()
    updater.idle()
    print('Stopped')

if __name__ == '__main__':
    Main()
