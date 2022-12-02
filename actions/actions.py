# from typing import Text, List, Dict, Any

# from rasa_sdk import Action, Tracker
# from rasa_sdk.events import SlotSet, SessionStarted, ActionExecuted, EventType
# from rasa_sdk.executor import CollectingDispatcher


# class ActionSessionStart(Action):
#     def name(self) -> Text:
#         return "action_session_start"

#     def


#     async def run(
#         self,
#         dispatcher: CollectingDispatcher,
#         tracker: Tracker,
#         domain: Dict[Text, Any],
#     ) -> List[EventType]:

#         # the session should begin with a `session_started` event
#         dispatcher.utter_message("Hi, I am Aayush Bot !!!")
#         events = [SessionStarted()]

#         # any slots that should be carried over should come after the
#         # `session_started` event
#         events.extend(self.fetch_slots(dispatcher, tracker))