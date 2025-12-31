let context = #{};

// This generally comes from ANSWERS, but prompting for it ensures it is in the context 

context += prompt("Project Author:", "author_name", #{
    placeholder: "Your Name",
});

context += prompt("Project Author Email:", "author_email", #{
    placeholder: "your.name@example.com",
});

context.author_full = context.author_name + " <" + context.author_email + ">";

context += prompt("Project Name:", "project_name_kebab", #{
  cases: [
    CasedValue(KebabCase), 
  ], 
});

context += prompt("Description:", "description", #{
  help: "Project description",
});

context.project_name_snake = snake_case(context.project_name_kebab);

render(Directory("contents"), context)
