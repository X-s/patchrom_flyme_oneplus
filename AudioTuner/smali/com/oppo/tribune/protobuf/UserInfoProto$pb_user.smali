.class public final Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
.super Lcom/google/protobuf/GeneratedMessage;
.source "UserInfoProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_user"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x18

.field public static final AGE_FIELD_NUMBER:I = 0xb

.field public static final BACKGROUND_FIELD_NUMBER:I = 0x1e

.field public static final BG_TYPE_FIELD_NUMBER:I = 0x1d

.field public static final BIRTHDAY_FIELD_NUMBER:I = 0xe

.field public static final BIRTHMONTH_FIELD_NUMBER:I = 0xd

.field public static final BIRTHYEAR_FIELD_NUMBER:I = 0xc

.field public static final BLOODTYPE_FIELD_NUMBER:I = 0x16

.field public static final CITY_FIELD_NUMBER:I = 0x17

.field public static final CONSTELLATION_FIELD_NUMBER:I = 0x10

.field public static final CREDITS_FIELD_NUMBER:I = 0x9

.field public static final DATELINE_FIELD_NUMBER:I = 0x1c

.field public static final FOLLOWED_FIELD_NUMBER:I = 0x6

.field public static final FOLLOWER_FIELD_NUMBER:I = 0x8

.field public static final FOLLOWING_FIELD_NUMBER:I = 0x7

.field public static final GENDER_FIELD_NUMBER:I = 0xa

.field public static final HEADURL_FIELD_NUMBER:I = 0xf

.field public static final HEIGHT_FIELD_NUMBER:I = 0x14

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final LEVELNAME_FIELD_NUMBER:I = 0x1a

.field public static final LEVEL_FIELD_NUMBER:I = 0x19

.field public static final LIKED_NUM_FIELD_NUMBER:I = 0x2a

.field public static final LIKES_NUM_FIELD_NUMBER:I = 0x2b

.field public static final MOBILE_FIELD_NUMBER:I = 0x13

.field public static final MOOD_FIELD_NUMBER:I = 0x1f

.field public static final NICKNAME_FIELD_NUMBER:I = 0x4

.field public static final REALNAME_FIELD_NUMBER:I = 0x5

.field public static final REGTIME_FIELD_NUMBER:I = 0x1b

.field public static final SHARE_NUM_FIELD_NUMBER:I = 0x29

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TELPHONE_FIELD_NUMBER:I = 0x12

.field public static final USERNAME_FIELD_NUMBER:I = 0x3

.field public static final WEIGHT_FIELD_NUMBER:I = 0x15

.field public static final ZODIAC_FIELD_NUMBER:I = 0x11

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Ljava/lang/Object;

.field private age_:I

.field private background_:Ljava/lang/Object;

.field private bgType_:I

.field private birthday_:I

.field private birthmonth_:I

.field private birthyear_:I

.field private bitField0_:I

.field private bitField1_:I

.field private bloodtype_:Ljava/lang/Object;

.field private city_:Ljava/lang/Object;

.field private constellation_:Ljava/lang/Object;

.field private credits_:I

.field private dateline_:I

.field private followed_:I

.field private follower_:I

.field private following_:I

.field private gender_:I

.field private headurl_:Ljava/lang/Object;

.field private height_:Ljava/lang/Object;

.field private id_:J

.field private level_:I

.field private levelname_:Ljava/lang/Object;

.field private likedNum_:I

.field private likesNum_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mobile_:Ljava/lang/Object;

.field private mood_:Ljava/lang/Object;

.field private nickname_:Ljava/lang/Object;

.field private realname_:Ljava/lang/Object;

.field private regtime_:I

.field private shareNum_:I

.field private status_:I

.field private telphone_:Ljava/lang/Object;

.field private username_:Ljava/lang/Object;

.field private weight_:Ljava/lang/Object;

.field private zodiac_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3126
    new-instance v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->defaultInstance:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .line 3127
    sget-object v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->defaultInstance:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->initFields()V

    .line 3128
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .prologue
    const/4 v0, -0x1

    .line 192
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1015
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->memoizedIsInitialized:B

    .line 1134
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->memoizedSerializedSize:I

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;Lcom/oppo/tribune/protobuf/UserInfoProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserInfoProto$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;-><init>(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 195
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1015
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->memoizedIsInitialized:B

    .line 1134
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->memoizedSerializedSize:I

    .line 196
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->nickname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->realname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->followed_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->following_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->follower_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->credits_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->gender_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->age_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthyear_:I

    return p1
.end method

.method static synthetic access$1902(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthmonth_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthday_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->headurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->constellation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->zodiac_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->telphone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mobile_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->height_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->weight_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bloodtype_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->city_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->level_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->levelname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->regtime_:I

    return p1
.end method

.method static synthetic access$3402(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->dateline_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bgType_:I

    return p1
.end method

.method static synthetic access$3602(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->background_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mood_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->shareNum_:I

    return p1
.end method

.method static synthetic access$3902(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likedNum_:I

    return p1
.end method

.method static synthetic access$4002(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likesNum_:I

    return p1
.end method

.method static synthetic access$4102(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField1_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->id_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->status_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->username_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 781
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->address_:Ljava/lang/Object;

    .line 782
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 783
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 785
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->address_:Ljava/lang/Object;

    .line 788
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getBackgroundBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 897
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->background_:Ljava/lang/Object;

    .line 898
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 899
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 901
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->background_:Ljava/lang/Object;

    .line 904
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getBloodtypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bloodtype_:Ljava/lang/Object;

    .line 714
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 715
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 717
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bloodtype_:Ljava/lang/Object;

    .line 720
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getCityBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->city_:Ljava/lang/Object;

    .line 748
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 749
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 751
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->city_:Ljava/lang/Object;

    .line 754
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getConstellationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 509
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->constellation_:Ljava/lang/Object;

    .line 510
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 511
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 513
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->constellation_:Ljava/lang/Object;

    .line 516
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->defaultInstance:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 209
    # getter for: Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getHeadurlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 475
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->headurl_:Ljava/lang/Object;

    .line 476
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 477
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 479
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->headurl_:Ljava/lang/Object;

    .line 482
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getHeightBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 645
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->height_:Ljava/lang/Object;

    .line 646
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 647
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 649
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->height_:Ljava/lang/Object;

    .line 652
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getLevelnameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 827
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->levelname_:Ljava/lang/Object;

    .line 828
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 829
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 831
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->levelname_:Ljava/lang/Object;

    .line 834
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getMobileBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 611
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mobile_:Ljava/lang/Object;

    .line 612
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 613
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 615
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mobile_:Ljava/lang/Object;

    .line 618
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getMoodBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 931
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mood_:Ljava/lang/Object;

    .line 932
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 933
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 935
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mood_:Ljava/lang/Object;

    .line 938
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->nickname_:Ljava/lang/Object;

    .line 300
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 301
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 303
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->nickname_:Ljava/lang/Object;

    .line 306
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getRealnameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->realname_:Ljava/lang/Object;

    .line 334
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 335
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 337
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->realname_:Ljava/lang/Object;

    .line 340
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getTelphoneBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 577
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->telphone_:Ljava/lang/Object;

    .line 578
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 579
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 581
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->telphone_:Ljava/lang/Object;

    .line 584
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getUsernameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->username_:Ljava/lang/Object;

    .line 266
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 267
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 269
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->username_:Ljava/lang/Object;

    .line 272
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getWeightBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 679
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->weight_:Ljava/lang/Object;

    .line 680
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 681
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 683
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->weight_:Ljava/lang/Object;

    .line 686
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getZodiacBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 543
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->zodiac_:Ljava/lang/Object;

    .line 544
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 545
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 547
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->zodiac_:Ljava/lang/Object;

    .line 550
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->id_:J

    .line 980
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->status_:I

    .line 981
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->username_:Ljava/lang/Object;

    .line 982
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->nickname_:Ljava/lang/Object;

    .line 983
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->realname_:Ljava/lang/Object;

    .line 984
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->followed_:I

    .line 985
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->following_:I

    .line 986
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->follower_:I

    .line 987
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->credits_:I

    .line 988
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->gender_:I

    .line 989
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->age_:I

    .line 990
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthyear_:I

    .line 991
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthmonth_:I

    .line 992
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthday_:I

    .line 993
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->headurl_:Ljava/lang/Object;

    .line 994
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->constellation_:Ljava/lang/Object;

    .line 995
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->zodiac_:Ljava/lang/Object;

    .line 996
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->telphone_:Ljava/lang/Object;

    .line 997
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mobile_:Ljava/lang/Object;

    .line 998
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->height_:Ljava/lang/Object;

    .line 999
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->weight_:Ljava/lang/Object;

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bloodtype_:Ljava/lang/Object;

    .line 1001
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->city_:Ljava/lang/Object;

    .line 1002
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->address_:Ljava/lang/Object;

    .line 1003
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->level_:I

    .line 1004
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->levelname_:Ljava/lang/Object;

    .line 1005
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->regtime_:I

    .line 1006
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->dateline_:I

    .line 1007
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bgType_:I

    .line 1008
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->background_:Ljava/lang/Object;

    .line 1009
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mood_:Ljava/lang/Object;

    .line 1010
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->shareNum_:I

    .line 1011
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likedNum_:I

    .line 1012
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likesNum_:I

    .line 1013
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 1369
    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->create()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$300()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 1378
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1334
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    .line 1335
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    .line 1338
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1346
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    .line 1347
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    .line 1350
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1294
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1364
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1321
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1328
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1308
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 767
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->address_:Ljava/lang/Object;

    .line 768
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 769
    check-cast v1, Ljava/lang/String;

    .line 776
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 771
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 772
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 774
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->address_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 776
    goto :goto_0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->age_:I

    return v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 4

    .prologue
    .line 883
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->background_:Ljava/lang/Object;

    .line 884
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 885
    check-cast v1, Ljava/lang/String;

    .line 892
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 887
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 888
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 890
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->background_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 892
    goto :goto_0
.end method

.method public getBgType()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bgType_:I

    return v0
.end method

.method public getBirthday()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthday_:I

    return v0
.end method

.method public getBirthmonth()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthmonth_:I

    return v0
.end method

.method public getBirthyear()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthyear_:I

    return v0
.end method

.method public getBloodtype()Ljava/lang/String;
    .locals 4

    .prologue
    .line 699
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bloodtype_:Ljava/lang/Object;

    .line 700
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 701
    check-cast v1, Ljava/lang/String;

    .line 708
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 703
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 704
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bloodtype_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 708
    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 733
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->city_:Ljava/lang/Object;

    .line 734
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 735
    check-cast v1, Ljava/lang/String;

    .line 742
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 737
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 738
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->city_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 742
    goto :goto_0
.end method

.method public getConstellation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 495
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->constellation_:Ljava/lang/Object;

    .line 496
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 497
    check-cast v1, Ljava/lang/String;

    .line 504
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 499
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 500
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->constellation_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 504
    goto :goto_0
.end method

.method public getCredits()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->credits_:I

    return v0
.end method

.method public getDateline()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->dateline_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->defaultInstance:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    return-object v0
.end method

.method public getFollowed()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->followed_:I

    return v0
.end method

.method public getFollower()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->follower_:I

    return v0
.end method

.method public getFollowing()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->following_:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->gender_:I

    return v0
.end method

.method public getHeadurl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 461
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->headurl_:Ljava/lang/Object;

    .line 462
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 463
    check-cast v1, Ljava/lang/String;

    .line 470
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 465
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 466
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->headurl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 470
    goto :goto_0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 4

    .prologue
    .line 631
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->height_:Ljava/lang/Object;

    .line 632
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 633
    check-cast v1, Ljava/lang/String;

    .line 640
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 635
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 636
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 638
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->height_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 640
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->id_:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->level_:I

    return v0
.end method

.method public getLevelname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 813
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->levelname_:Ljava/lang/Object;

    .line 814
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 815
    check-cast v1, Ljava/lang/String;

    .line 822
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 817
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 818
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->levelname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 822
    goto :goto_0
.end method

.method public getLikedNum()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likedNum_:I

    return v0
.end method

.method public getLikesNum()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likesNum_:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 597
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mobile_:Ljava/lang/Object;

    .line 598
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 599
    check-cast v1, Ljava/lang/String;

    .line 606
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 601
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 602
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 604
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mobile_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 606
    goto :goto_0
.end method

.method public getMood()Ljava/lang/String;
    .locals 4

    .prologue
    .line 917
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mood_:Ljava/lang/Object;

    .line 918
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 919
    check-cast v1, Ljava/lang/String;

    .line 926
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 921
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 922
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 923
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 924
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mood_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 926
    goto :goto_0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 285
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->nickname_:Ljava/lang/Object;

    .line 286
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 287
    check-cast v1, Ljava/lang/String;

    .line 294
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 289
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 290
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->nickname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 294
    goto :goto_0
.end method

.method public getRealname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->realname_:Ljava/lang/Object;

    .line 320
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 321
    check-cast v1, Ljava/lang/String;

    .line 328
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 323
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 324
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->realname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 328
    goto :goto_0
.end method

.method public getRegtime()I
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->regtime_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/high16 v6, -0x80000000

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1137
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->memoizedSerializedSize:I

    .line 1138
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1280
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1141
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1142
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 1143
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1146
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 1147
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->status_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1150
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v7, :cond_3

    .line 1151
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUsernameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1154
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v8, :cond_4

    .line 1155
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1158
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1159
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRealnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1162
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1163
    const/4 v2, 0x6

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->followed_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1166
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 1167
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->following_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1170
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 1171
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->follower_:I

    invoke-static {v8, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1174
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 1175
    const/16 v2, 0x9

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->credits_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1178
    :cond_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 1179
    const/16 v2, 0xa

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->gender_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1182
    :cond_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 1183
    const/16 v2, 0xb

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->age_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1186
    :cond_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 1187
    const/16 v2, 0xc

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthyear_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1190
    :cond_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d

    .line 1191
    const/16 v2, 0xd

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthmonth_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1194
    :cond_d
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e

    .line 1195
    const/16 v2, 0xe

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthday_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1198
    :cond_e
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_f

    .line 1199
    const/16 v2, 0xf

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeadurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1202
    :cond_f
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_10

    .line 1203
    const/16 v2, 0x10

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getConstellationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1206
    :cond_10
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_11

    .line 1207
    const/16 v2, 0x11

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getZodiacBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1210
    :cond_11
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_12

    .line 1211
    const/16 v2, 0x12

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getTelphoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1214
    :cond_12
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_13

    .line 1215
    const/16 v2, 0x13

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMobileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1218
    :cond_13
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_14

    .line 1219
    const/16 v2, 0x14

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeightBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1222
    :cond_14
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_15

    .line 1223
    const/16 v2, 0x15

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getWeightBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1226
    :cond_15
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/high16 v3, 0x200000

    if-ne v2, v3, :cond_16

    .line 1227
    const/16 v2, 0x16

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBloodtypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1230
    :cond_16
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    const/high16 v3, 0x400000

    if-ne v2, v3, :cond_17

    .line 1231
    const/16 v2, 0x17

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1234
    :cond_17
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    const/high16 v3, 0x800000

    if-ne v2, v3, :cond_18

    .line 1235
    const/16 v2, 0x18

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1238
    :cond_18
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_19

    .line 1239
    const/16 v2, 0x19

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->level_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1242
    :cond_19
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    const/high16 v3, 0x2000000

    if-ne v2, v3, :cond_1a

    .line 1243
    const/16 v2, 0x1a

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevelnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1246
    :cond_1a
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    const/high16 v3, 0x4000000

    if-ne v2, v3, :cond_1b

    .line 1247
    const/16 v2, 0x1b

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->regtime_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1250
    :cond_1b
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    const/high16 v3, 0x8000000

    if-ne v2, v3, :cond_1c

    .line 1251
    const/16 v2, 0x1c

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->dateline_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1254
    :cond_1c
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    const/high16 v3, 0x10000000

    if-ne v2, v3, :cond_1d

    .line 1255
    const/16 v2, 0x1d

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bgType_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1258
    :cond_1d
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    const/high16 v3, 0x20000000

    if-ne v2, v3, :cond_1e

    .line 1259
    const/16 v2, 0x1e

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBackgroundBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1262
    :cond_1e
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_1f

    .line 1263
    const/16 v2, 0x1f

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMoodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1266
    :cond_1f
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_20

    .line 1267
    const/16 v2, 0x29

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->shareNum_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1270
    :cond_20
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField1_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_21

    .line 1271
    const/16 v2, 0x2a

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likedNum_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1274
    :cond_21
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField1_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_22

    .line 1275
    const/16 v2, 0x2b

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likesNum_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1278
    :cond_22
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1279
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->memoizedSerializedSize:I

    move v1, v0

    .line 1280
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getShareNum()I
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->shareNum_:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->status_:I

    return v0
.end method

.method public getTelphone()Ljava/lang/String;
    .locals 4

    .prologue
    .line 563
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->telphone_:Ljava/lang/Object;

    .line 564
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 565
    check-cast v1, Ljava/lang/String;

    .line 572
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 567
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 568
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->telphone_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 572
    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->username_:Ljava/lang/Object;

    .line 252
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 253
    check-cast v1, Ljava/lang/String;

    .line 260
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 255
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 256
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->username_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 260
    goto :goto_0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 4

    .prologue
    .line 665
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->weight_:Ljava/lang/Object;

    .line 666
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 667
    check-cast v1, Ljava/lang/String;

    .line 674
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 669
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 670
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->weight_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 674
    goto :goto_0
.end method

.method public getZodiac()Ljava/lang/String;
    .locals 4

    .prologue
    .line 529
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->zodiac_:Ljava/lang/Object;

    .line 530
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 531
    check-cast v1, Ljava/lang/String;

    .line 538
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 533
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 534
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->zodiac_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 538
    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800000

    .line 763
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAge()Z
    .locals 2

    .prologue
    .line 409
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBackground()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    .line 879
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBgType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000000

    .line 867
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBirthday()Z
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBirthmonth()Z
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBirthyear()Z
    .locals 2

    .prologue
    .line 421
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBloodtype()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 695
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCity()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 729
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConstellation()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 491
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCredits()Z
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDateline()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8000000

    .line 855
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFollowed()Z
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFollower()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFollowing()Z
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGender()Z
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeadurl()Z
    .locals 2

    .prologue
    .line 457
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeight()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 627
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 223
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevel()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 797
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelname()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000000

    .line 809
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLikedNum()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 959
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLikesNum()Z
    .locals 2

    .prologue
    .line 971
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMobile()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 593
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMood()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 913
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNickname()Z
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRealname()Z
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegtime()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4000000

    .line 843
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShareNum()Z
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 947
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTelphone()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 559
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUsername()Z
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWeight()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 661
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZodiac()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 525
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 213
    # getter for: Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1018
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->memoizedIsInitialized:B

    .line 1019
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1020
    if-ne v0, v1, :cond_0

    .line 1023
    :goto_0
    return v1

    .line 1020
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1022
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 1373
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1388
    new-instance v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserInfoProto$1;)V

    .line 1389
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->toBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->toBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 1382
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1288
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/high16 v4, -0x80000000

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1028
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getSerializedSize()I

    .line 1029
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 1030
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1032
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 1033
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->status_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1035
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_2

    .line 1036
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUsernameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1038
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_3

    .line 1039
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1041
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1042
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRealnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1044
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1045
    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->followed_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1047
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1048
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->following_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1050
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1051
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->follower_:I

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1053
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1054
    const/16 v0, 0x9

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->credits_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1056
    :cond_8
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 1057
    const/16 v0, 0xa

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->gender_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1059
    :cond_9
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 1060
    const/16 v0, 0xb

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->age_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1062
    :cond_a
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 1063
    const/16 v0, 0xc

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthyear_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1065
    :cond_b
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 1066
    const/16 v0, 0xd

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthmonth_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1068
    :cond_c
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 1069
    const/16 v0, 0xe

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthday_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1071
    :cond_d
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 1072
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeadurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1074
    :cond_e
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    .line 1075
    const/16 v0, 0x10

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getConstellationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1077
    :cond_f
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_10

    .line 1078
    const/16 v0, 0x11

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getZodiacBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1080
    :cond_10
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_11

    .line 1081
    const/16 v0, 0x12

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getTelphoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1083
    :cond_11
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_12

    .line 1084
    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMobileBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1086
    :cond_12
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_13

    .line 1087
    const/16 v0, 0x14

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeightBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1089
    :cond_13
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    const/high16 v1, 0x100000

    if-ne v0, v1, :cond_14

    .line 1090
    const/16 v0, 0x15

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getWeightBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1092
    :cond_14
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/high16 v1, 0x200000

    if-ne v0, v1, :cond_15

    .line 1093
    const/16 v0, 0x16

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBloodtypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1095
    :cond_15
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/high16 v1, 0x400000

    if-ne v0, v1, :cond_16

    .line 1096
    const/16 v0, 0x17

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1098
    :cond_16
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_17

    .line 1099
    const/16 v0, 0x18

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1101
    :cond_17
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_18

    .line 1102
    const/16 v0, 0x19

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->level_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1104
    :cond_18
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_19

    .line 1105
    const/16 v0, 0x1a

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevelnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1107
    :cond_19
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_1a

    .line 1108
    const/16 v0, 0x1b

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->regtime_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1110
    :cond_1a
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_1b

    .line 1111
    const/16 v0, 0x1c

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->dateline_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1113
    :cond_1b
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_1c

    .line 1114
    const/16 v0, 0x1d

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bgType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1116
    :cond_1c
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_1d

    .line 1117
    const/16 v0, 0x1e

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBackgroundBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1119
    :cond_1d
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1e

    .line 1120
    const/16 v0, 0x1f

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMoodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1122
    :cond_1e
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1f

    .line 1123
    const/16 v0, 0x29

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->shareNum_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1125
    :cond_1f
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_20

    .line 1126
    const/16 v0, 0x2a

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likedNum_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1128
    :cond_20
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_21

    .line 1129
    const/16 v0, 0x2b

    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likesNum_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1131
    :cond_21
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1132
    return-void
.end method
