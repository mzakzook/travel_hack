# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

500.times do 
  User.create({
    name: Faker::Name.name, 
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 100),
    email: Faker::Internet.email,
    location: Faker::Address.city,
    bio: Faker::Hipster.paragraphs(number: 2).join(' '),
    username: Faker::Internet.password,
    password: Faker::Internet.password
  })
end

destinations = [
  {city: "New York", state: "NY", country: "USA", img_url: 'https://lh3.googleusercontent.com/jTBt6tRZ65iQVmX58YwxSCYwCvqFvdTR6u_8pg2r1N5osgmzcO6QxKYlnzLze8DjzMdEaprKN_bO_CAWn_MNq79B_Lcp_Ai01WXyX4tC6eqrm_b1AfnD70M4-3oPZNkI_kF6m1w8CcuDUCDLr-qOusjkn_1wcslRvDrrWFvJQ14czs3DMXURUW6w0Hu_EpbEMoJvKlr3XOcmd-E88HJhhPJhUr2FRpNIM0uynvaa5jXm4xwt2eZYGqVt-V4UT5y0eQ7xLIHf8VlsgUWq-y4TMU_dguNNPHOnHwb5W59Uro5T7L5kaeRaoBMNj1bbtX0iKt9y-P7tT3RP73reBL26HUi3UX1wdQyCY3LL1P2v2Ffw7wBnmumm4LJrecqFwxD1IxplmljzJAVKthxetB_mpgA_icXpJSNWsWw1-Riui_2hYfJLPOitjGzm7038v8mmlgaqSWJ8qDZYtugNo-_hWDaBXPmQs2HEZkWTzoVKHSN-s8iUZPDdn5sAflSz_Fqs6-kYMUTkPDymWOP28dgW14W07q2er_6tGdI4JM3384waU7Nq0EWfx_GgTH6Zh_XlcDEvQmH_TUnqhJK8Bu4zMz-mhnQ6x_GHXGNxOETwmUOifSEwgAbBi21t8fyGyBTdwCeX21rWjBupVHlSjaff-9XtD7TCfW7YDR_M8NYUhetk6uGvMNET=w950-h634-no'}, 
  {city: "San Francisco", state: "CA", country: "USA", img_url: 'https://lh3.googleusercontent.com/aBRfcbH6F-tMt6mucdPEzm-b7HtcI3s0hnxfl0tgHk5XmYn204RMM210cLQdF41nrW94qdbqHQglzfTPjojG8RpWW-QiZRcU5HvdQI5OxO0sKzHrps9L9CCCnZm2CcSsO4JO5_9zSaMnYQ90dCkq3MhbU3v5vJpvHX7Yf6bge0uFv1ZoTd4GGcY-Sn-GKGdTvFNoeGzBFg02iJ-z-T8F4grWfY24854Jk7Fa-zh-K_imv2kBDvK18pYy0eTKJLIdwgxuMhlGDxjN6BLIAUdHxGyO58eG8u5MgA_cHrr3rChzCjAK0ctxt2G9TBb9DiNPnkcn3kuJhsbS91lUZTPS0F8hq30cbAY_DFouvGTlxFLhta5lqnpP-kV5BByAR2F9PfXY8iDRZbcCpW8bWKWlKUWyjZTcQqNJkITB47PIDeIsvBSxje02ld1Wt9wN309x9XqxFBIv-FNT-s66R3jgmTzFUTVKQ6Ie1KrZmf-ckZiuoT6IBeA4kqgj87BwLGhzS6I79bJFcqBtctxxjSLLWOfAfURzuaWOgVNjSOERs4heRPZUvp_1ISiB8dvnfKmTkvst9VF55FGKwryhJzJdZqb6s2XziRidJW9SLMlDj3b0b-T-9pwWtS2_nIYhTtRy9LpDfsqdWwGTQbELvj0sRE6J3iwrOS1VhlJj3ISKPtcXgRvE--8s=w1171-h659-no'}, 
  {city: "Los Angeles", state: "CA", country: "USA", img_url: 'https://lh3.googleusercontent.com/sIOjW8NlrzK75v6XRg7nouIU4N6-f5WVFcfegKvahZWH3SmPs5H0WY2at50jw9C7xD6paz6rlioZfZjGLKeiIlLJ6Z4p3OF79KJCdN_9_RHFCRK7Hc8wN7pcBbs8wQIPiiLEYsIVCkY03PJLchSGtOKFXayCIc1aX_tPui9uYz78R3flvW1wWgFWnON9UYYGrZ21ScsyGKE0WaT6Wnh9oovrXYAjYq5cKW1CNowVM9LedBlvluRSg_noRK9ph-3ejwNeMqT4ZXqURr7Ppbklptx620N2hUoVgtJxP6W4OyryKwPiWurrZP0GSBGP4c_4BXVsAv0vnGdPLl2to3kaice1tQTJ6IXtxbv3VTg6jYseYU_CyJRezH4WgjPjI2Hvsu3Ww53PL5Aynk0HhM17Ks-S-hgnBdudjX7htA0-ClcJfU2IhDMqKKcudzKPqGfTIwrwawdShDNq6LYA31Mg2_W2M7w-PxPrlmDLKLS75PQWlYNYIyUILE-fBvYF9xsmmHf_8fDGR1vg9wd3hHsL_xBXVoCNN0hLSr_k7be2aAenELJaJjzfDrfnfkc-TXj8uJoHGiOJaVtEM7xe1G71xugEFko6POp6Aat_-g1dBoDOwDdL1iP-p3cCuC03Ka8ePnVjcJJD-aJt86WEcn9pCSg389aZbMOmj9MMvkdRiYacUkQnJ8xD=w1171-h879-no'}, 
  {city: "Paris", country: "France", img_url: 'https://lh3.googleusercontent.com/divg720VUVGk555LS6dDzdSWr5x7LveaXU-nZ9YxsuCsmqukOD2ImqVLLNz4ZqxxMRnvG4okYozW98efVp9PmpwERxc8GCylILAkUpRCDh8eePzxW8OkKARbBVweW9_6k6zrobxUgo50PNE60Gdu3538Oq8YqbRNP5UX1UMgiNodNIQESfzDTRmu1FUTHmibx4I5osrJuAoRxggSCcB6M2vP5psduyh2K-ZRio0MPnA1pnFyYt6MpWyufpgdnESRtXwQfRCls91QzxucRRoAiNvhuhqpEA2-gmCTk1qrQM6XsvTr04Febsq-JGkv-NxunZBl_IJ1r-6xGfg7QXvIlfCW9s6Tw5WJiIEw0mupv1_19lEIibYjwQu42rEYnEs1PhEaL_0U8G9HVoxkoZytwYPQTnnWtR3IxWKmRKZwXzkdP7IONeoGX750jy7T7RizaQnYdhqXL2YmTpp0NFozQVsOBCi1qpwXv_zLZSLcUylRz80kOne3r7xJbw8-tc-s57MuC5AkvdE78JHQPyXGf5b9M7Bt4Xknn9iESdDaHAFSU4Vp4SSiOyyxMM-YQ9tqPz9ToFC-akzB5-c6C1Kao5x184_5552tFam1ifSoUCreVfn9fWTik7UkyHQBBPuFWiAcIBLtR75QKSWFDx35GDxtlJEkJaAKM8PkEaOjgezF4WuGsR4i=w1171-h780-no'}, 
  {city: "London", country: "UK", img_url: 'https://lh3.googleusercontent.com/qTa1YHG216ZS3YSV-Pkw1Dr2409w3d7w5MDir2Ruq87o5ZTb2EIcCTiOzzYVsz4CpFhDeeW8WLjAvHvXF4FPapcLkaJacKpYHDnv_Odqq6tT-2fnZug2dc6iiSdfG6Y0ag4MIjdlKx_mTmIHs3l1KLKgv_x4h08qu6K0hqvlXEhDUiZA5TprY4zIRnuOZmH4aKvFvq1yBpU6CZkMbPiZwOs6jSJgUCkYJLR-fxQN--VJnMKsN6VwuT-2s1WnGwcAsA50sfMrn7SC60ThEjMBT_jAsdF7q1k-FNTeUmW6ciWm9Z3GxdoeX_OfZzLdpYxJmt1oxiVlXNcKcugOTydU9D81onM2ymqPjasNp5mvuGFxxHnshAUqyYm95PYwjgb38HQKSQcPJcxdkp_CWKP7LetE1LaPGRDG19DzVwsEhx6ZYBTBFVzSKVBQLcmmJhAIXGp6P9QharjXT9U07ikpuQsa8PaGfmkjJ7e4tVGBzYlaUajKRMYwcgi-fBYXE2YCUo5nCwuP4FmfLTYKKoPwrbIzocJXZiQvu_fiUKfhh6WuyaHt-Znl6pvq59Lwf5k0mV0HYSNLJVKMU5XLz9loHUg4kOfps9nsT-YLB3iUXiLzJB2Ot_Qn-MX0ihm25YMAPCf9tAqihCticEjQ__MWFrOBqoG882WZKATAYZGubPVfPU4rF_Jv=w1171-h699-no'}, 
  {city: "Tokyo", country: "Japan", img_url: 'https://lh3.googleusercontent.com/HzoCblJCysKcTo4ZH61llR4-8PKFBDSyzxvSeVk08PcvFSVUVX8x7WWoTl9aTKBNJCQfP9al4uvZvSAC042XdTcxIPaTy_Q5XrryCyJZBgPl4j0JLyl5jUmcxirOI02Ia9byWvbNb1Feuw1GoUrnGORNjixqWD9sE4_JadE4EDyfSAglg42z_BMleOeQ4f4432vHY9G68r_M1FOSRXzpX9S5T1XOBf8yS0a0el3zC1vJ08SEdsbkfxf5_xjl3v0yEhl82DaC1lupXCwsBuAk22VW0YMU8JDyDpLFV6HUEtqi_GlIpBBC5sxcWjxQ-IdfPW15u7fkxYFGjONPTSQ6lqVwOByTLJoPoGvW4d2gsx1mbQkGNA8_BvJQ1ImBbqr-WyjHKPqK8BQlaORk_W5fMVRjta8BIf3lhIsrXBHqqmQrqLfwUC3i0UOB5VjIr3ymefcZDfGaJtHTWo2ezRXn97mbS1pWA-J0CZxdeH-cTpNjtHQY0Y3WBxKyuFBtTteXlr6STjBjQHppcuSMtiI5ojYCUfrzi8OV4J0N_1wf8FuiWIqMJymFZjF2kbQUhtiQcbvayhvo6-1_QHk62R4wjdEQNpGv7Bl_zOVWmKKafvz4-fRcRQvU7FhG3O9VEakswsXRAzibljIPCCOiBYuwD01xgh3HumyZYGjJOUn6JkzGiW-_1L_M=w1171-h781-no'}, 
  {city: "Sydney", country: "Australia", img_url: 'https://lh3.googleusercontent.com/xvua7l5ZRNPe6EwqemXY6G4UsHc0qwXznXfPkd8VpEQKOQHW-LFwv1a76rCbx-T2bTqo0JcPr2Bg2DQsvxk3VMkNO-Sq8Mq83aLxd-q_C1BcsmEJ5bY_jLmzPkpntAmRcdbw9_sNu3oWqPlWrLusO01ZB71y9dNqO2jZ8uG3Wapl0v5IL9es8-Fyof7QQEqa9Ifdd_puRGWllQed96_EHA7IqtwT6YnJPh5_xJG2EFv2evNEuAYtpNyQeu4mCwPfqX3LHR3e0bQbMGci0W1BXGXsDN9W04kno9JMGZXHQEbkd2hq48wbgK3yTymKcdVboEi_sbojZCqUqglDByJvyPfkp5BDorvVTue3MPGceXVu7mOgxeZTQG9cSvAU18JXIw5pRc1iZnJS7oWyDATGNAbWC47ZHqaYCypWcYI4FCfkn7HtQ1wB7dDjpKqruwezdg00LMg-W2USjja53YhtUGomvZ5ZDaQXzwahWOc29bJvHRbj_UhFyBplgEKviZE3hQAs-Vr4xUECjb7Qwp_6VOfLkkm7AfMqOQwwgN6eWIB8HFtvDoB1Y7GFPNLfOz-bvo9AwlqlIStpEArAW5sIMc1qnf1O83WYKacbSILaC0_pFjubw9vZeFyFkE38bgpOjp03BH3LXjJXvPnr2jTwg123XCfbHW0g2cQVFCOTg2QhRqcgMSnl=w1171-h781-no'}, 
  {city: "Auckland", country: "New Zealand", img_url: 'https://lh3.googleusercontent.com/2ssKJr2djA4ZXuGdUHwZxHakZzXUqlLB1ICKf8EFS9QT8FALHt2zZX7Pz_m8ciSYzvnMwnO2EeKnkvqVjR_n5TFtmrK448w-heagfEkBdspTAqa8ztCiw8jnvfZVFiKS1-niDX17bZp0zM-sGCeCkvB9eh5GHn_SDURpZWWQVvfw3aWcUFXJHOgi33zXZMnyGn2i1F8ttoh2Uu47sSDvGNbyLM-L4UVXKfJh1WQXcgSnCE6R_aOtrUbCljVdnMPkRbuVXIAGC3HlrAZV9y5n8Vc4T6y5jz09ISCnLqVAMOEdRN4WOBxBANU0HLRg8FcNkF4KMHFsQk0BA2J6aGmiALfFlyl6OE8UmyRYPLqq3Zzz1O46JvmbSLctFbHgiCOBDBYgijFXzhsu9cF8Fh9DjXH65DcilWeIh1v3ZmhWAYmk7zRzR2Ftnu4sJGyRDiMpFZunvfdd84YF8WskRtrdqEYKrcl0pH3AkhMsWm_gC8eqFpnwmXL3I8L3gOE4o-GudSa8GdCfBGLXjRt4N-AuqRPdxKaTKD6e6Dh_MHKeFcWH1byov31zgrqcX_A9I7RGXzMBJFaUtTE1-CO9qXqJ53MmNtL-Tq_K4VEL38JRH2Tm40Kb7w3dCXVCFKemBVFVa2M7A6buxSuK7xqGHjFhKmgxwxcVWwv_utquz-aFYkvGBtkfXeUp=w1171-h879-no'}, 
  {city: "Oakland", state: "CA", country: "USA", img_url: 'https://lh3.googleusercontent.com/Q9u-8pJojKglOIZg2xp6KZ2J4D-OhleP0_Ak4p8hINw3qYSM9B01HbE_YgO41wBIJMtfv3f1no4Dg0g2RZctPxMmlUFc1i_tVelbwtaoyCBLvPItCOsaYqWGrMnfjmXubk290glAl91pP7TblyT4RVdBfzvLlfoXz4tPRGSzMFIvl0BwukBSdF0KGncmK_OH1ecubFvXYhk-xGPblXt4KBqlX4BCP9up6aGvkYVPLhoojZKqbxfx_eeXIZMw_6UD2QNhR2ZE1TgM4LqthTjMv_t79jWiouXNX2Wn4kRGKCyYq9RNO_idEk_Pu3ca6cT35GUv-XLeNG9D7zlbwwQE8zV_WX1y4djtmYX9JOzr9wvs3l5jJ_t3WsrTgiHEwoLA02d-0xm83a-8X8m1xYYSCZOlF1HUxfMRcrnni3wczJxaTSvolTq6oLrhZbr_6S6xCm_aRx8RYjUf_xx2UAM_rfQ-8MsgEcfQkh-TREbejjXRLEeXMsWPVM5yXJK81xjGo2WEZlK8909vIKmJT5PFtX2LQd_rsGq5RKeLZqJroDzhSaPUrk6Yj5AC4pXYAscSVN6A6axJooKmnLRTdFUbI12sQCCzpAGlsxg-Wb3EkLZ-udtEKbOrYRQKq3GJpMTivm_X_jnEkB4py7xEOj_T1HcRuGSzI3irQKg3fujYtGJB4z3on2IY=w1171-h784-no'}, 
  {city: "Cairo", country: "Egypt", img_url: 'https://lh3.googleusercontent.com/OKnXl6bbb38cCNCFRac9emuniVUQQbaE_8esjUR5-lIJkaHF9FGvmGRqG7xv5wTSeFzqln5GWuzEKINKEDMMNSWlpDlts2a0DgQqmngDEgsjHNs6a7xO3WotS0is8rTClKijhKyi7iFEgz6V8-NsMpZkc1sbNG4SuZk1nOhra_kxpPw4K0Eh3Wo5Y0ur4cYGc0cX0zTpdSHEKwve9XhgMv5jKMes5-aRt-LRAiX-u-QaJPKNVDMf2rFLM08D5wKYot39GiGXsU5FRYItGO7A4aqM_AsHRYldn_v2xauDWsqswQCUJTibjT7f2oRgzSTIGDcwc4tH_mz9k1o2_-WaaQelsn3jQvECgwUDFx16v_w41mrzvr58twaS7OO8NRpblZHveN6PAfb3gTFTf_C4o5e_hhk5BRKj_-Dff2rX3j2PRZb8zVSV_e6ZhaZ6kDUXH2qnK9v6BOHfYmLPVf7eV_l17zqbzQGjEHkwOr2CmY44E1Q3NFplHkjfwFMHJCf6bBKmV0RVBk2VpnwTVoPoWWgDAwr0njsTGxkj6dldCWRffd8cFClmsRIZuixTxN4R0Ll6cogW_bs2-02PI26jU5LDz_xdRRbUL1QRgvQ90vEAIxL_Mu9q04VSfDAzLQjB6v_to8Vmae9LSIihDrRKlbcYH5wdL3wzFcw6sSPS16GzjeR_2-vr=w950-h727-no'}, 
  {city: "Hong Kong", img_url: 'https://lh3.googleusercontent.com/z2zR_6a01M2eQn_qLBXVhECqjHpUwpbzespSXqat2qWoUN_xziSV33xwiBhGPXxWa2yiuK1Lyge4XHsHhmdpYo2NrpZM_JtSeJR-y5ZJT_HgTaGEX8K37JCBC7_vuFg3r2_au6VRPzTmnQn7zUh8Luzprx2-EDUfEZiWYJs9-1I6ajyCTksFJFWzU_VnUNCfQ9gvkNhnWU7Hb2Ul9nv4Vv0x2TBir8z0dDHdlk1J-jrmhgs_XWQxj0klxuCM-X1I45VF1mJj4PtHayIvfz5eJo_Dz5kYUAtDEq0zpIPjjQN4byPG9-dUD3Ef7NOm7u-kzahny1D8xl5tHzg3DwwrSYjpTLWevVec9-vsJEc1K-cntBGgCnK--B7pK79fGgE5pzjh4cRiFlpnTvjy9dQVhN68trWIivOz8gNqJqWz1Sd9gvO1j83SDHTQAbA9mVWL9MwC-LuQr6b88DmxdI-4tTNI7lPIOPzfsa_J5k6B7xV-pJmphBhoYsHvdqPNTlcGKzrqc8Ca0i6-uaFyKELvKIzaRHqkc5WDd4mpOZ5sb5HsqFCQriUgg7RQPI2_LpTAbIg_tmcz-_AhkQ1oI-MLzmIBWVidD5_1mZmrcS_m3tK3rhqIrPNBao012y4uQRdb7U9MaTM3tLOQUJMqPiqnZ4_CH_HHw8flCoYhRF8bFn_93vOPCPTv=w950-h629-no'}, 
  {city: "Singapore", img_url: 'https://lh3.googleusercontent.com/sZ4kyMKbhYSUEbS1do9MxF6gIVVDWkVSfr97HD4IDFbBvfaXJ37exehJtVrHwR1MlOT_5p2K4oO4xmvEDsgwvA9_RqYhMRdnWTeeVP6GR62GnaMPKeXQB_YUMyQrot4cV4AQpkR0ePXmW9tzTdCu3KHyLvrf2gdCwcyCJPmEbHTqkblNgM8Uy_eyiNE9rqI47q3aUCuYwscbMXFpEL9VzJCRsHRD06dEqT-Xs6KshkfpMSWnpOfsAXna1hHPHUrMWNHg4qDlVmjSVWbVaiFa9mw57R8Plo2eUvpgEbuMZRjRoyvxOT7FAs2KbVbeWm91W6pM-PxHXC5w4Nkc9I4W3VgOYleU0Qf5HHviUFQ35ac5Qu4yxUJ24SP8BhlHRxPFQGe9sc0QqFID0P0H-GXxY_UW3UrzprJLIZilGKxKKjtsDOe4gfiqS90tMpdRLmNO-Rcpg-itdWf7MksIC9fb1cjblalvl_18NmMHFXyb5V1Tf6Pj8-yjehk8_GA4cjBDhUzaaufyc2JRAlk_PzAchozzIM9eWwPBH-UUNXYPF3YPyGI4SKi0WymIocnaUL60PAhipqvt7V485rrTR6uBG3lHypdjKqxnnG0mgCxwtWG3nRBVpfIO0gUOqflHJM8BXkTnCHDni090dBEJefZiG1RSoUx3v2B3z4MAVxzUkoQvQsLXUjt4=w950-h534-no'}, 
  {city: "Florence", country: "Italy", img_url: 'https://lh3.googleusercontent.com/Hszo_lcTVxn24qD8ow1Z1Qq2QPN0_W9hOULS953G8ndkBqcnOArazRiXFxmwqXsmh68wQZXY2bMSZ2x754ocY_q5claSdM4f9w_iR-xdve-08_VcQhB3ru6L7oxdS15VV1mQlzejkX64LETFKwDCj_m_JFKJbuyvGr-Ux1M_thdihC0ruLsyAm3mQOBp3muM-B3IYZdiqwKGpcX-fL9N-T6KHk83HN1FSAZklOLjY2GtsuvZ8VbP5CQuvb2x5qAkbDyAmcoZ5kafA0ezdF9Yq_wZEtW5EqoMP-qombAAOOshO3hpK_slGsxgkLdQA8mkqhrYrlpvrx9alz3XC89KmOvtbGahP3H6u6M0SkoUKr0qrMb35-8Qb0h8FXOc4lj9KzzCx3ExnsEpMctLziC-fnqF2CupJu2v1_D__8vmg441rFnlBrgVHWjoG-ktTKAmnw33TBFJtxcC96OEBPnGi2apjTvl3AE-MBudN9F71L_x0GE-hXZ-PhmQRHV3O0PeUuXy9sl0G6PyID1bKbJTzq-Qq5KQ_QWPBSC-bmsd9vqe8XLeDqmwwtM8xOyQdapABcEm39x4bDuDfs4MDwKpKcaV3022bOldfDGFHrwrNirVKvtPYg2IaKZ4yxPErbydBSO2dQUl9Im90OsWTMCd-uhE-mojc1SIAd1Gf3QJs63zYDt4abH4=w950-h636-no'}, 
  {city: "Berlin", country: "Germany", img_url: 'https://lh3.googleusercontent.com/NPSPbuwizib7RA9S2CRy5JV0TIbcAD-PDrnhLiScBsSConIH-4iZ8K1qgT3MwigD9Pdr7dwneTjiaHE8QU1cf0uQbogOUAmDTUlbB3Q2RNm67xJWEx-xH1jSMmOiExd038Efg6g9A2Mob2KAyOara1KUKIwUhPi-zRnjByC4ylEFxOKiRuwDNAK47wU4mH8AFHcBMV61T00usfgRENfp5anX7BMZwumdzo-meFcHTlC0hjSBVb3rbnbWCt0vTNLlsCEpOKvh_4jp448ZlnKzOKeVhb3aVqAVIcThwGpY1xf1DBL2iM4UgE-tj0xA5_a2eHSoSogCVdFerZJ73RKBkraVmtAaIgdR3ANTTDqT1queu7r4zK3oC5FcLN0whYH1YMojGYn0gDznSioP_e4fx3-l-34azJQIrR_1z-l8epdUAntLaai5LzyIAMcQu0Qsn9EMkFB0eU_osUhSit58ATUHRFv6TsYyt6i9lbT76bk6VED7iAAtLsAkEglxAQT-XqYMPVK4OXd9jaefcXUdrQxTgWAvhoy4luRid2dXXcbyv3n7Kl5maWMt_G5EARvYvqeW3L980KPlzd43RmrZqUybudc0f1Hng8yw0TqViVL-hgsQFQaQYlH6ISDNN4PJyYMx8MbORvxg2aSStRP7EICNAjiWgYdGqRdwo-70Ketha8UB0d_4=w950-h535-no'}, 
  {city: "Vancouver", state: "BC", country: "Canada", img_url: 'https://lh3.googleusercontent.com/FjqLHLuokEFAIy5vkrrnFCxHuEZ08X33jm_a88J-XWckjQJwNYZkovYAaw6LkRDlm5IfPXBdyYyle-BZRQEOtaOgi5pW1_BBqa4xMs2BcxWw6ExiiGl5nzCmBHPXTNQWfbwGIzFKLXMiowC83aAWza3iHix1KZzSrsyrBnkNrp-Buav9IXRzvbvgrdnN2LeKZdzhhey0IF45nDMgq26gFuw4nGz07k_BXRgj4VQXL1GHG7g_paM6Ikq4lp7DbxrZP5uzC8JU58fWb705-3H_DB_T2z_K2MmlK3nRijTdEUGVtP59cbGS9OjSI8-RZnLXJVG_AcYdNdJhUS6mE6kmYtN-uSV_rFefDK7jRYqEVdLcDRCaLUQHo6wWDSDV5bRk4LVZwOEJ9u4JMNrapXerluwb9LaPrgFObnsu3bqA1oR_kyWGdPfLl40dNKDpR0QR0b4IvTi7sstOkR2Ka2nUrtuUb9p1c3o9Vi3Yx2ChdTEuNTBXk_8gETOKzqi051xlhK9i2b37Kxs-OuXya9ilEzl8XmOf1ignVOp8tjnBIFlgQrKj6MmlPSEUJOg4_MtAmwidt6FNA5d6REg9qvKJ_hc-_Qify8HA0CKfRvBQtNnCuUlTz9ws2S77qYsPxOuYFIgUwFxnvhvCf0no54lHFBXXoKPk8039W2YkRB8qiFlZHdt9HCOs=w950-h629-no'}, 
  {city: "Mexico City", country: "Mexico", img_url: 'https://lh3.googleusercontent.com/71r68Tk7SlXY_gozNpFHL5Zn9Y4Kcwan7QUoaAKp3frulrT6BeqakF3lELeJ4vW9YRvHyHGRYIQd_bdNAI7kNHxUuGs8J1fewUPTQpoiv839mDKp9B27wgvTshaNd8bQd2ZpO_1QVQKaNpvLTcE3GGcrrc-DaMVx6VAfOQYVu4DQhcJ1CY_o2MulRKnADbo8rwYZLADHUaSaZjzDozoOY_FkXdQ85BY1Kgqcld3YR6fqwD-WQtJH93ZXbGyGkt4C_M_kRchF24u-uKqne2NE0mXA_lJR2O0N2Tkt88XRm-F0XDbcBlLSSOG8ws0LYIepWmQnxPVLU_13uSciYBuqF5m9_Kgga8lbNbaenvqR2yBLxP-61YlFdDxNIzV2bj5m6RUq_L70rZbCiz5vTDmBmdnJnPMtNXkqcXZGdQDdNRwvVa1rIM6-Lbhssf62-uHEzeNwibTF0hiPzfetkCPCixWdeFuYttmX3z3QAGG2Auq0LChyAKivQpC4b8cBS6EnkW6KRsW6DdEMb8wTUdOUFin0U77uZaE0cb2mZuLYReFWL31rR3Q3jfApR2z4Wxv6f2dcltsh4RkCUxzgVEB3UQP3r1k-TbDHAy4CcvU5QP5x7-1KiA7NMxxo8UxRe-ZTpuiPjQz9SiqFyVAvWvRlp7fauOJsLTjP6n9EnW33DIBEOUdtNEJX=w950-h663-no'}, 
  {city: "Buenos Aires", country: "Argentina", img_url: 'https://lh3.googleusercontent.com/dzCgGZym_FXFMOWi3angp_qzpAo21kgX8MIhkrSw6OQkllaI4LQRc6NxEW_vhvPymV0hwZIdFC_spN1h2xqu4MJ5aWXNSS-6AohKuf44De0TdnFTH5rXjFfjNpsluKu9F5c5IE14mIVUPJC5503JddKJK8zPVFLOyr0xl7TG5lJPqGBcVlnj3slI_2arshkSgE3sLD0awSs2QoEQkkLhC-jkgnRKlA4q71w052PtqdR_7Co_KS2EuBwKYGM31vVVZEpvbQf1VFbMaimq3UC0wcYmv9YZSGyyFUbYqUY0APv-Ypv-jPzdWIj14A6UV4cDFkoiqKNMnCRpzpkHDHQG7Z4TOugMm0gZRQxYC-Fdvn15dpnXVg27rfaCe88IJmKg96hdEnTZrmU0XKYShxBk-ndvoZb-1W7NcFruIaubHxokPiOOe3AGbVj2zmef3QIC5saXoqfHF1Jo4KQpdrcN5GR8xIh_OMY8MmNzovEahwLqXy2VCS0qHd_yRHA8iJPl-OU720L0yHMSaM6CIbUwjB0dh8DqVxOU4_ovg4e5FOxuYnCozFWeWvY1tJ5rXS9WiWUjiBoCvwpSUjYATZ-gnwBN3xGATWEjlLeb4YH_cmHF0eQgJ-Jfj7mcd0CrhG4tmCueaOGgsgKar73FqNfmR1KLcpZV5vXEbaEbMtSovkF9rAmoz9MA=w950-h634-no'}, 
  {city: "Madrid", country: "Spain", img_url: 'https://lh3.googleusercontent.com/j7foHQ48VNzDu_wmbgJDQaElUXDmiNJnwNzXV13HRR4qIIltqKOkkzTFjAZNAugl45aeLKZkqruO7zE9Q5kMcfOlsD53-Y3EfAZL-ffkbEr1JRuWbCmuNTzh9zQIs7XgDVW0qHqOkR4AWa8qQQvGce0UlWgN56L2NjQNJn55eU-odJdefR5jw0dQmswGYR_biLLjwugiB56Hc-yximKJZZnkDofpNtFFYMY8N3cDcmmSJCeMnlXKXqgtp2AWehZ1guhZ6ryrryi7vpD4lpetT5BROLpxwT-cRgZ36_qL9A7fSSk7nkHFR5-mnFk5VLLCKdPsRnzxu7kHo_0Gu5wc1s60b4LrbrU3B4K_f4q3cOhkVtcW_N4fuR7TIpWt3_bp-nujX_GmMSahAQ_yMdzZ4EdrM1VxJVRiwQ8sqgWuR7vNMx5R-KnjssY_e6MtEX9RnqAOOSz8Zer0IEwD4wxv1ec2hcyL_IWen_Brv8Qw_y8SphNTyzP8CpJkhvBI5vWxj_r2HAIoLKoB6QuW3rFK8t-i2XM0b58TekoWQgGfMvZJ4IdpitTHwyHC9d7xg_uU1EDJB4rAm9-0ue_RG-xk3QLN9NthPCrXp1iRpWl_jZhlkDpm2ep2nqlQr4R0mUnqZe4-cqacIko4akbq_8OlH6PuAwHAD_6LKj4mGzjyL8TxhI-5SnNf=w950-h535-no'}, 
  {city: "Seoul", country: "South Korea", img_url: 'https://lh3.googleusercontent.com/L8JAAYK4OdW5-jCgqoKlHHpB-QiOmXWcFgMsGI483YwzQlm4pkGU4uK3vOfXdo4og3awYtK6wQMLIuAthMTRGYYc1DEO6F55Cuz88pV8DsKKPZqIOZ7alJG4rumm0CuDOBE9mQW0ATZxp0vAMIMhAN7HghV3fSY7k3Tyg-TLjKJMXTklA9HpZr9lRoHdlR54Npgo_V45uWaKsyLHIZ6l9CS9-pZliVHy65fAbV1xVbNbxk4ZgxtPQ_xg6fNjzxZqBhrf_xnUB0iffpDQzMVdSWH6-xtxIMikSm2vWO0Y4T2pW0s1cdRX4-XUHY6QiCZrFjJKAgrpNWE1cW9n5wEpClFxO1fmopWrQLTA0Eqk_-5Z-lDonw5YPscpTN_ZHcuaeZPJ90Tzyhfrx6J_AmL772b4cuKvxrh4aZ1eLS9Av5ZX1OlpW8YfRqG2qVivZpP8Vsl2Pj5NA8Guh_4vFTnOCRH6L2x6dSL_JwkW0i4Wy-lefKirCKOXf0cN_6HFl1uk-k5Go7f2BPWA-HRajmIKfYWKn02dvYLt9awdHmWBjSmgrP_LccY8e55AJHnJJyiOqD6PX7tKTnJMPh4upzDvyEQhkS0MDoSQKXUhpaotdxxMbmBQT8IlWpLRNoh-vahaCsZxGytHtiuOoDJOf1jT2Mq8xTiRS8SyKr5E_cOnBQvO4EZNUgPK=w950-h634-no'}
]


destinations.length.times do |i| 
  Destination.create(destinations[i])
end

categories = ["Transportation", "Dining", "Nightlife", "Cultural", "Adventure", "Rewards/Points"]

2500.times do 
  Hack.create({
    category: categories.sample,
    title: Faker::Hipster.sentence(word_count: 4),
    content: Faker::Hipster.paragraphs(number: 1).join(' '),
    user: User.all.sample,
    destination: Destination.all.sample
  })
end

1000.times do 
  Comment.create({
    content: Faker::Hipster.paragraphs(number: 1).join(' '),
    user: User.all.sample,
    hack: Hack.all.sample
  })
end

5000.times do
  Like.create({
    user: User.all.sample,
    hack: Hack.all.sample
  })
end

250.times do
  Follow.create({
    follower_id: User.all.sample.id,
    followed_id: User.all.sample.id
  })
end


