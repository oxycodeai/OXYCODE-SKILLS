const path = require("path");

const OxycodePlugin = async ({ client, directory }) => {
  const skillsDir = path.join(directory, "skills");

  return {
    name: "oxycode-skills",
    config: (config) => {
      if (!config.skills) config.skills = {};
      if (!config.skills.paths) config.skills.paths = [];
      config.skills.paths.push(skillsDir);
      return config;
    },
  };
};

module.exports = OxycodePlugin;
