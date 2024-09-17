import PublicNavbar from "./Components/PublicNavbar";
import Footer from "./Footer";
import {useEffect, useState} from "react";
import axios from "axios";
import {Link, useParams} from "react-router-dom";
import ReactLoading from "react-loading";
import TextEditorRender from "./TextEditorRender";

const BlogDetails = () => {
    let {blog_id} = useParams();
    let [blogs, setBlogs] = useState([]);
    useEffect(() => {
        axios.get("http://localhost:3300/blog-details/" + blog_id).then(res => {
            console.log(res.data);
            setBlogs(res.data);
        })
    }, []);
    return (
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
                                    <h2 className="title">Blog Details</h2>
                                    <ul className="breadcrumb justify-content-center">
                                        <li className="breadcrumb-item"><a href="/">Home</a></li>
                                        <li className="breadcrumb-item active" aria-current="page">Blog-Details</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {
                blogs.length ?
                    <div className="section blog-details-section section-padding-02 mb-5">
                        <div className="container">
                            <div className="blog-details-wrap">
                                <div className="row">
                                    <div className="col-xl-12 col-lg-12">
                                        <div className="blog-details-post">
                                            {
                                                blogs.map((value, index) => {
                                                    let { bdt, title, message, cat_name, fullname} = value;
                                                    return (
                                                        <>
                                                            <div className="single-blog-post single-blog">
                                                                <div className="blog-image">
                                                                    <Link to="#"><img
                                                                        src="/assets/images/blog/blog-s-2.jpg" style={{width:"100%"}}
                                                                        alt=""/></Link>
                                                                    <div className="top-meta">
                                                                        <span className="date"><span>{bdt}</span></span>
                                                                    </div>
                                                                </div>
                                                                <div className="blog-content">
                                                                    <h3 className="title">{title}</h3>

                                                                </div>
                                                            </div>
                                                            <div className="blog-details-content">
                                                                <div className="blog-quote">
                                                                    <blockquote className="blockquote">
                                                                        <p><TextEditorRender
                                                                            htmlString={message}></TextEditorRender></p>
                                                                    </blockquote>

                                                                </div>

                                                            </div>
                                                        </>
                                                    )
                                                })
                                            }

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> :
                    <div></div>

            }

            <Footer/>
        </>
    )
}
export default BlogDetails;