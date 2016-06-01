.class public Lcom/oppo/tribune/util/SpecialStatistics;
.super Ljava/lang/Object;
.source "SpecialStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    return-void
.end method

.method public static RegisterAccountSuccess(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 38
    const-string v2, "sms"

    .line 39
    .local v2, "tag":Ljava/lang/String;
    if-ne p1, v3, :cond_1

    .line 40
    const-string v2, "email"

    .line 44
    :cond_0
    :goto_0
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->REG_ACCOUNT:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 46
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 42
    const-string v2, "sms"

    goto :goto_0
.end method

.method public static addPostNewAction(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_POST_NEW:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 56
    return-void
.end method

.method public static addPostRatingAction(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_MAKING_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 91
    return-void
.end method

.method public static addPostReplyAction(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 66
    const-string v2, "reply"

    .line 67
    .local v2, "tag":Ljava/lang/String;
    if-ne p1, v3, :cond_1

    .line 68
    const-string v2, "reply"

    .line 78
    :cond_0
    :goto_0
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_REPLY_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 81
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 70
    const-string v2, "quick_reply"

    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 72
    const-string v2, "quote"

    goto :goto_0

    .line 73
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 74
    const-string v2, "comment"

    goto :goto_0

    .line 75
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 76
    const-string v2, "from_list"

    goto :goto_0
.end method

.method public static changFlowSetting(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 436
    const-string v2, "quality_high"

    .line 437
    .local v2, "tag":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 438
    const-string v2, "quality_high"

    .line 446
    :cond_0
    :goto_0
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_FLOW_SETTING:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 448
    return-void

    .line 439
    :cond_1
    if-ne p1, v3, :cond_2

    .line 440
    const-string v2, "quality_low"

    goto :goto_0

    .line 441
    :cond_2
    if-nez p1, :cond_3

    .line 442
    const-string v2, "quality_close"

    goto :goto_0

    .line 443
    :cond_3
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 444
    const-string v2, "quality_default"

    goto :goto_0
.end method

.method public static changPushSetting(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 458
    const-string v2, "push_open"

    .line 459
    .local v2, "tag":Ljava/lang/String;
    if-ne p1, v3, :cond_1

    .line 460
    const-string v2, "push_open"

    .line 464
    :cond_0
    :goto_0
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_PUSH_SETTING:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 466
    return-void

    .line 461
    :cond_1
    if-nez p1, :cond_0

    .line 462
    const-string v2, "push_close"

    goto :goto_0
.end method

.method public static changeHomepageBg(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_HOMEPAGE_BG:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 168
    return-void
.end method

.method public static clickAdThree(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 251
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_AD_THREE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 254
    return-void
.end method

.method public static clickAdvertise(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_ADVERTISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 244
    return-void
.end method

.method public static clickAttentedAction(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 174
    const-string v2, "attention"

    .line 175
    .local v2, "tag":Ljava/lang/String;
    if-ne p1, v3, :cond_1

    .line 176
    const-string v2, "attention"

    .line 182
    :cond_0
    :goto_0
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_ATTENTE_BUTTON:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 184
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 178
    const-string v2, "cancel_attention"

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 180
    const-string v2, "all_attention"

    goto :goto_0
.end method

.method public static clickDiffernetForum(Landroid/content/Context;IJ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "id"    # J

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_DIFF_FORUM:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 282
    return-void
.end method

.method public static clickMainGallery(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 207
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_MAIN_GALLERY:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 210
    return-void
.end method

.method public static clickMainTab(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 476
    const-string v2, "square"

    .line 477
    .local v2, "tag":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 494
    :goto_0
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_MAIN_TAB:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 496
    return-void

    .line 479
    :pswitch_0
    const-string v2, "square"

    .line 480
    goto :goto_0

    .line 482
    :pswitch_1
    const-string v2, "squareforum"

    .line 483
    goto :goto_0

    .line 485
    :pswitch_2
    const-string v2, "paike"

    .line 486
    goto :goto_0

    .line 488
    :pswitch_3
    const-string v2, "friendfeed"

    .line 489
    goto :goto_0

    .line 491
    :pswitch_4
    const-string v2, "homepage"

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static clickPackCover(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_PACK_COVER:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 293
    return-void
.end method

.method public static clickPackHotListPosition(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 337
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_HOTLIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 340
    return-void
.end method

.method public static clickPackNewListPosition(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 350
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_NEWLIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 353
    return-void
.end method

.method public static clickPackThemeListPosition(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 362
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_THEMELIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 365
    return-void
.end method

.method public static clickTribuneHotPost(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_TRIB_HOTPOST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 233
    return-void
.end method

.method public static clickTribunePostTid(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tid"    # J

    .prologue
    .line 264
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_TRIB_POST_TID:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 267
    return-void
.end method

.method public static gotoPackHotList(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_HOT_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 304
    return-void
.end method

.method public static gotoPackNewList(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    const-string v2, "find"

    .line 314
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_NEW_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 316
    return-void
.end method

.method public static gotoPackThemeList(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_THEME_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 327
    return-void
.end method

.method public static loginAccountSuccess(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # J

    .prologue
    .line 25
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->LOGIN_ACCOUNT:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 28
    return-void
.end method

.method public static packPostNew(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_POST_NEW:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 113
    return-void
.end method

.method public static packPraise(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_CLICK_PRAISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 146
    return-void
.end method

.method public static packReplyPost(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 123
    const-string v2, "reply"

    .line 124
    .local v2, "tag":Ljava/lang/String;
    if-ne p1, v3, :cond_1

    .line 125
    const-string v2, "reply"

    .line 133
    :cond_0
    :goto_0
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_REPLY_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 135
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 127
    const-string v2, "quick_reply"

    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 129
    const-string v2, "comment"

    goto :goto_0

    .line 130
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 131
    const-string v2, "from_list"

    goto :goto_0
.end method

.method public static postPraise(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_CLICK_PRAISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tribune"

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 157
    return-void
.end method

.method public static pushMsgAction(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 190
    const-string v2, "reach"

    .line 191
    .local v2, "tag":Ljava/lang/String;
    if-ne p1, v3, :cond_1

    .line 192
    const-string v2, "reach"

    .line 196
    :cond_0
    :goto_0
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PUSH_MSG:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 198
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 194
    const-string v2, "click"

    goto :goto_0
.end method

.method public static slideMainGallery(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->SLIDE_MAIN_GALLERY:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 221
    return-void
.end method

.method public static visitOtherHomepage(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->VISIT_OTHER_HOMEPAGE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 102
    return-void
.end method
