import PublicNavbar from "./Components/PublicNavbar";
import Footer from "./Footer";

const About = ()=>{
    return(
        <>
            <PublicNavbar/>
            <div className="section page-banner-section user-login-banner">
                <div className="shape-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="726.5px" height="726.5px">
                        <path fill-rule="evenodd" stroke="rgb(255, 255, 255)" stroke-width="1px" stroke-linecap="butt"
                              stroke-linejoin="miter" opacity="0.302" fill="none"
                              d="M28.14,285.269 L325.37,21.217 C358.860,-8.851 410.655,-5.808 440.723,28.14 L704.777,325.36 C734.846,358.859 731.802,410.654 697.979,440.722 L400.955,704.776 C367.132,734.844 315.338,731.802 285.269,697.978 L21.216,400.954 C-8.852,367.132 -5.808,315.337 28.14,285.269 Z"/>
                    </svg>
                </div>
                <div className="shape-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="972.5px" height="970.5px">
                        <path fill-rule="evenodd" stroke="rgb(255, 255, 255)" stroke-width="1px" stroke-linecap="butt"
                              stroke-linejoin="miter" fill="none"
                              d="M38.245,381.102 L435.258,28.158 C480.467,-12.32 549.697,-7.964 589.888,37.244 L942.832,434.257 C983.23,479.466 978.955,548.697 933.746,588.888 L536.733,941.832 C491.524,982.23 422.293,977.955 382.103,932.745 L29.158,535.732 C-11.32,490.523 -6.963,421.293 38.245,381.102 Z"/>
                    </svg>
                </div>
                <div className="container">
                    <div className="page-banner-wrap">
                        <div className="row">
                            <div className="col-lg-12">
                                <div className="page-banner text-center">
                                    <h2 className="title">About Us</h2>
                                    <ul className="breadcrumb justify-content-center">
                                        <li className="breadcrumb-item"><a href="/">Home</a></li>
                                        <li className="breadcrumb-item active" aria-current="page">About Us</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className="section login-register-section ">
                <div className="container">
                    <h3 className={"mt-2"}>Tech Blog and Troubleshooting Website</h3>

                    <p>
                        This project involves creating a website that serves two primary functions: a tech blog and a
                        troubleshooting resource. The tech blog will feature articles on various technology topics,
                        while the troubleshooting section will offer solutions to common tech problems.
                    </p>
                    <p>
                        * Troubleshooting Help**: Offer detailed guides and solutions for common technical issues
                        faced by users.
                        * Interactive Features: Allow users to comment on blog posts, ask questions, and share
                        their own troubleshooting tips.
                        * User-Friendly Design: Ensure the website is easy to navigate and visually appealing.
                    </p>
                    <p>
                        <strong>Features</strong>
                        <ul>
                            <li><strong>Tech Blog Section:</strong>
                                Regularly updated articles on various tech topics (e.g., software reviews,
                                hardware comparisons, coding tutorials, cybersecurity tips).
                                Organize articles into categories for easier navigation.
                                Allow users to leave comments and engage in discussions.
                            </li>
                            <li>
                                <strong>Troubleshooting Section</strong>  Guides and solutions for frequently encountered technical problems (e.g.,
                                software errors, hardware malfunctions, network issues).
                                A search bar to help users quickly find relevant troubleshooting
                                guides.
                                A section where users can submit their own solutions or ask for help
                                with specific problems.
                            </li>
                        </ul>
                    </p>
                </div>
            </div>
            <Footer/>
        </>
    )
}
export default About;