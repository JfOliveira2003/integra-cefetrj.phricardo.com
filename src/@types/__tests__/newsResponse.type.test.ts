
import { NewsResponse } from "../newsResponse.type";

describe("NewsResponse", () => {
  it("should correctly assign values", () => {
    const news: NewsResponse = {
      news: [
        {
          id: 1,
          title: "News 1",
          description: "Description 1",
          url: "http://example.com",
          image: "http://example.com/image.png",
          posted_at: "2024-01-01",
        },
      ],
    };

    expect(news.news[0].id).toBe(1);
    expect(news.news[0].title).toBe("News 1");
  });
});
