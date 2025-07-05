
import { EventsResponse } from "../eventsResponse.type";

describe("EventsResponse", () => {
  it("should correctly assign values", () => {
    const events: EventsResponse = {
      events: [
        {
          id: 1,
          title: "Event 1",
          description: "Description 1",
          date: "2024-01-01",
          time: "12:00",
          place: "Place 1",
        },
      ],
    };

    expect(events.events[0].id).toBe(1);
    expect(events.events[0].title).toBe("Event 1");
  });
});
