.class public final enum Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;
.super Ljava/lang/Enum;
.source "SpecialStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/util/SpecialStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CHANGE_FLOW_SETTING:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CHANGE_HOMEPAGE_BG:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CHANGE_PUSH_SETTING:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_ADVERTISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_AD_THREE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_ATTENTE_BUTTON:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_DIFF_FORUM:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_MAIN_GALLERY:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_MAIN_TAB:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_PACK_COVER:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_TRIB_HOTPOST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLICK_TRIB_POST_TID:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLK_PACK_HOTLIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLK_PACK_NEWLIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum CLK_PACK_THEMELIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum GOTO_PACK_HOT_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum GOTO_PACK_NEW_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum GOTO_PACK_THEME_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum LOGIN_ACCOUNT:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum PACK_CLICK_PRAISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum PACK_POST_NEW:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum PACK_REPLY_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum PUSH_MSG:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum REG_ACCOUNT:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum SLIDE_MAIN_GALLERY:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum TRIBUNE_MAKING_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum TRIBUNE_POST_NEW:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum TRIBUNE_REPLY_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

.field public static final enum VISIT_OTHER_HOMEPAGE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 369
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "LOGIN_ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->LOGIN_ACCOUNT:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 371
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "REG_ACCOUNT"

    invoke-direct {v0, v1, v4}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->REG_ACCOUNT:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 373
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "PUSH_MSG"

    invoke-direct {v0, v1, v5}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PUSH_MSG:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 375
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_ADVERTISE"

    invoke-direct {v0, v1, v6}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_ADVERTISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 377
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_AD_THREE"

    invoke-direct {v0, v1, v7}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_AD_THREE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 379
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_MAIN_GALLERY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_MAIN_GALLERY:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 381
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "SLIDE_MAIN_GALLERY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->SLIDE_MAIN_GALLERY:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 383
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_TRIB_HOTPOST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_TRIB_HOTPOST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 385
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_TRIB_POST_TID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_TRIB_POST_TID:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 387
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_DIFF_FORUM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_DIFF_FORUM:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 389
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_PACK_COVER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_PACK_COVER:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 391
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "GOTO_PACK_HOT_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_HOT_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 393
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "GOTO_PACK_NEW_LIST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_NEW_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 395
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "GOTO_PACK_THEME_LIST"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_THEME_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 397
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLK_PACK_HOTLIST_P"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_HOTLIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 399
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLK_PACK_NEWLIST_P"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_NEWLIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 401
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLK_PACK_THEMELIST_P"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_THEMELIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 403
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "VISIT_OTHER_HOMEPAGE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->VISIT_OTHER_HOMEPAGE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 405
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "TRIBUNE_POST_NEW"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_POST_NEW:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 407
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "TRIBUNE_REPLY_POST"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_REPLY_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 409
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "TRIBUNE_MAKING_POST"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_MAKING_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 411
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "PACK_POST_NEW"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_POST_NEW:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 413
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "PACK_REPLY_POST"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_REPLY_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 415
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "PACK_CLICK_PRAISE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_CLICK_PRAISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 417
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CHANGE_HOMEPAGE_BG"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_HOMEPAGE_BG:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 419
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_ATTENTE_BUTTON"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_ATTENTE_BUTTON:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 421
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CHANGE_FLOW_SETTING"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_FLOW_SETTING:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 423
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CHANGE_PUSH_SETTING"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_PUSH_SETTING:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 425
    new-instance v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    const-string v1, "CLICK_MAIN_TAB"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_MAIN_TAB:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    .line 367
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    sget-object v1, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->LOGIN_ACCOUNT:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->REG_ACCOUNT:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PUSH_MSG:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_ADVERTISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_AD_THREE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_MAIN_GALLERY:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->SLIDE_MAIN_GALLERY:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_TRIB_HOTPOST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_TRIB_POST_TID:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_DIFF_FORUM:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_PACK_COVER:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_HOT_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_NEW_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->GOTO_PACK_THEME_LIST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_HOTLIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_NEWLIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLK_PACK_THEMELIST_P:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->VISIT_OTHER_HOMEPAGE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_POST_NEW:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_REPLY_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->TRIBUNE_MAKING_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_POST_NEW:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_REPLY_POST:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->PACK_CLICK_PRAISE:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_HOMEPAGE_BG:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_ATTENTE_BUTTON:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_FLOW_SETTING:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CHANGE_PUSH_SETTING:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->CLICK_MAIN_TAB:Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->$VALUES:[Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    const-class v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    return-object v0
.end method

.method public static values()[Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->$VALUES:[Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    invoke-virtual {v0}, [Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/tribune/util/SpecialStatistics$StatConstant;

    return-object v0
.end method
