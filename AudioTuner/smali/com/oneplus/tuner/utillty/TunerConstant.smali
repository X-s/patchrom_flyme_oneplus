.class public Lcom/oneplus/tuner/utillty/TunerConstant;
.super Ljava/lang/Object;
.source "TunerConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;,
        Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;
    }
.end annotation


# static fields
.field public static final ACCOUNT_INFO:Ljava/lang/String; = "account_info"

.field public static final ACCOUNT_LOGIN_CHANGED_ACTION:Ljava/lang/String; = "oneplus.tuner.accounts.LOGIN_ACCOUNTS_CHANGED"

.field public static final AUDIO_TUNER_PREFERENCE_NAME:Ljava/lang/String; = "com_oneplus_tuner_preference"

.field public static final BP_INTERVAL:I = 0xa

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CATEGORY_CLASSIC:I = 0x7

.field public static final CATEGORY_DANCE:I = 0x5

.field public static final CATEGORY_FOLK:I = 0x9

.field public static final CATEGORY_HENCE_HIGH_PITCH:I = 0x8

.field public static final CATEGORY_HOT:I = 0x1

.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final CATEGORY_JAZZ:I = 0x4

.field public static final CATEGORY_MEGA_BASS:I = 0x6

.field public static final CATEGORY_POPULAR:I = 0x2

.field public static final CATEGORY_ROCK:I = 0x3

.field public static final CONFIG_IS_EMPTY:Ljava/lang/String; = "config_is_empty"

.field public static final EARPHONE_TYPE:Ljava/lang/String; = "earphone_type"

.field public static final EARPHONE_TYPE_ID:Ljava/lang/String; = "earphone_type_id"

.field public static final EMPTY_CONFIG:Z = false

.field public static final EMPTY_TYPE:Ljava/lang/String; = ""

.field public static final EMPTY_TYPE_ID:J = -0x1L

.field public static final EMPTY_USED_EFFECT:Ljava/lang/String; = ""

.field public static final EMPTY_VIEW_TYPE_NO_DATA:I = 0x2

.field public static final EMPTY_VIEW_TYPE_NO_NETWORK:I = 0x1

.field public static final EQ_NON_VALUE:I = 0x0

.field public static final EQ_SEPARATOR:Ljava/lang/String; = "#"

.field public static final HEADSET_PLUG_STATUS:Ljava/lang/String; = "headset_plug_status"

.field public static final IS_FROM_LIST:Ljava/lang/String; = "isFromList"

.field public static final IS_FROM_LOCAL_LIST:Ljava/lang/String; = "isfromlocal_list"

.field public static final IS_FROM_SHAREACTIVITY_FLAG:Ljava/lang/String; = "is_from_shareactivity_flag"

.field public static final LAST_UPDATE_USER_COLLECTION_TIME:Ljava/lang/String; = "last_update_user_collection_time"

.field public static final LOCAL_EDITED_SHAREDED:I = -0x2

.field public static final LOGIN_STATUS:Ljava/lang/String; = "login_status"

.field public static final LOGIN_TOKEN:Ljava/lang/String; = "login_token"

.field public static final MAAP_EQ_BAND_MIN:I = 0x28

.field public static final MAAP_IPEQ_2_ACTIVE:I = 0x27

.field public static final MAAP_IPEQ_3_ACTIVE:I = 0x8d

.field public static final MAAP_IPEQ_VALUE:I = 0x1

.field public static final MAX_3D_EFFECT:I = 0x64

.field public static final MAX_BASS:I = 0x64

.field public static final MAX_CHANNEL_BALANCE:I = 0x64

.field public static final MAX_CLEAR_VOCAL:I = 0x64

.field public static final MAX_FREQ:I = 0x3e80

.field public static final MAX_GAIN:F = 12.0f

.field public static final MAX_HF:I = 0x64

.field public static final MAX_VOLUME_GAIN:I = 0x14

.field public static final MIN_3D_EFFECT:I = 0x0

.field public static final MIN_BASS:I = 0x0

.field public static final MIN_CHANNEL_BALANCE:I = -0x64

.field public static final MIN_CLEAR_VOCAL:I = 0x0

.field public static final MIN_FREQ:I = 0x10

.field public static final MIN_GAIN:F = -12.0f

.field public static final MIN_HF:I = 0x0

.field public static final MIN_VOLUME_GAIN:I = 0x0

.field public static final NETWORK_CONNECTIVE_STATUS:Ljava/lang/String; = "network_connective_status"

.field public static final NUM_EFFECT:I = 0x1b

.field public static final NUM_EQ:I = 0x14

.field public static final ONEPLUS_ACCOUNT_TYPE:Ljava/lang/String; = "com.oneplus.account"

.field public static final ONEPLUS_AUTHTOKEN_TYPE:Ljava/lang/String; = "com.oneplus.account"

.field public static final ONEPLUS_EARPHONE_14049_EFFECT:I = 0x2

.field public static final ONEPLUS_EARPHONE_FEATJBLE1:I = 0x64

.field public static final ONEPLUS_EARPHONE_OTHERS:I = 0x65

.field public static final ONEPLUS_EARPHONE_SILVERBULLET:I = 0x2

.field public static final ONEPLUS_FRESH_NETWORK_ACTION:Ljava/lang/String; = "com_oneplus_fresh_network_action"

.field public static final ONEPLUS_IS_REFRESH_FLAG:Ljava/lang/String; = "isrefresh"

.field public static final REQUESTCODE:I = 0x0

.field public static final REQUEST_CODE:I = 0x65

.field public static final TUNER_DEFAULT_MODEL:Ljava/lang/String; = "default"

.field public static final TUNER_DEFAULT_NUM:I = 0x10

.field public static final TUNER_DEFAULT_STYLE:Ljava/lang/String; = "default"

.field public static final TUNER_DEFAULT_USER:Ljava/lang/String; = "default"

.field public static TUNER_FUTURE_FLAG_14001:Z = false

.field public static TUNER_FUTURE_FLAG_14049:Z = false

.field public static final TUNER_PERMISSION_NETWORK:Ljava/lang/String; = "tuner_permission_network"

.field public static final TUNER_PERMISSION_TIP:Ljava/lang/String; = "tuner_permission_tip"

.field public static final USED_EFFECT_STYLE:Ljava/lang/String; = "used_effect_style"

.field public static isRemind:Z

.field public static isRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->isRemind:Z

    .line 71
    sput-boolean v1, Lcom/oneplus/tuner/utillty/TunerConstant;->isRequest:Z

    .line 107
    sput-boolean v1, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    .line 108
    sput-boolean v1, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method
