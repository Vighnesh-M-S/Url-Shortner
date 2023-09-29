SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+05:30";
CREATE TABLE `shortened_urls` (
    `id` int(10) NOT NULL,
    `long_url` longtext NOT NULL,
    `short_url` varchar(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO `shortened_urls` (`id`, `long_url`, `short_url`)
VALUES (
        1,
        'https://www.amazon.com/Garmin-Smartwatch-Touchscreen-Monitoring-010-02173-11/dp/B07WLN9RYD?pf_rd_p=d22f02ec-561d-470e-9f56-891084a0600d&pd_rd_wg=Qo0Ro&pf_rd_r=019J72NE9TMCM3S11YXZ&ref_=pd_gw_unk&pd_rd_w=MWw7Q&pd_rd_r=8f8fe597-657d-46db-a9db-a43f22af852a',
        'yglih'
    );
ALTER TABLE `shortened_urls`
ADD PRIMARY KEY (`id`);
ALTER TABLE `shortened_urls`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;
COMMIT;