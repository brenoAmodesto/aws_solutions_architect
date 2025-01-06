
## Customization At The Edge

- Many modern applications execute some form of the logic at the edge
- Edge Function:
    - A code that you write and attach to CloudFront distributions
    - Runs close to your users to minimize latency
- CloudFront provides two types: CloudFront Functions & Lambda@Edge
- You don't have to manage any servers, deployed globally

- Use case: customize the CDN content
- Pay only for what you use
- Fully serverless

## CloudFront Functions & Lambda@Edge Use Cases

- Website Security and Privacy
- Dynamic Web Application at the Edge
- Search Engine Optimization (SEO)
- Intelligently Route Across Origins and Data Centers
- Bot Mitigation at the Edge
- Real-time Image Transformation
- A/B Testing
- User authentication and authorization
- User Prioriziation
- User Tracking and Analytics

## CloudFront Functions
- Lightweight functions written in JavaScript
- For high-scale, latency-sensitive CDN customizations
- Sub-ms startup times, millions of requests/second
- Used to change Viewer requests and responses:
    - Viewer Request: after CloudFront receives a request from a viewer
    - Viewer Response: before CloudFront forwards the response to the viewer
- Native feature of CloudFront(Manage code entirely within CloudFront)

## Lambda@Edge
- Lambda functions written in NodeJS or Python
- Scales to 1000s of requests/second
- Used to change CloudFront requests and responses:
    - Viewer Request - after CloudFront receives a request from a viewer
    - Origin Request - before CloudFront forwards the request to the origin
    - Origin Response - after CloudFront receives the response from the origin
    - Viewer Response - before CloudFront forwards the response to the viewer
- Author your functions in one AWS Region (us-east-1), then CloudFront replicates to its locations

## CloudFront Functions vs Lambda@Edge - Use cases

- CloudFront Functions
    - Cache key normalization
    - Transform request attributes (headers, cookies, query strings, URL) to create an optimal Cache Key
    - Header manipulation
    - Insert/modify/delete HTTP headers in the request or response
    - URL rewrites or redirects
    - Request authentication & authorization
    - Create and validate user-generated tokens (e.g., JWT) to allow/deny requests

- Lambda@Edge
    - Longer execution time (several ms)
    - Adjustable CPU or memory
    - Your code depends on a 3rd libraries (e.g, AWS SDK to access other AWS services)
    - Network access to use external services for processing
    - File system access or access to the body of HTTP requests