.class public final enum Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
.super Ljava/lang/Enum;
.source "PullMsgProto.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PullMsgProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PullMsgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final enum ALBUM_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final ALBUM_APP_VALUE:I = 0x8

.field public static final enum ALBUM_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final ALBUM_GAME_VALUE:I = 0x9

.field public static final enum HOT_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final HOT_APP_VALUE:I = 0x4

.field public static final enum HOT_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final HOT_GAME_VALUE:I = 0x3

.field public static final enum HOT_MUSIC:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final HOT_MUSIC_VALUE:I = 0x6

.field public static final enum HOT_THEME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final HOT_THEME_VALUE:I = 0x5

.field public static final enum HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final HOT_THREAD_VALUE:I = 0x1

.field public static final enum OFFICIAL_NEWS:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final OFFICIAL_NEWS_VALUE:I = 0x2

.field private static final VALUES:[Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final enum WEB_URL:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

.field public static final WEB_URL_VALUE:I = 0x7

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 15
    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "HOT_THREAD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "OFFICIAL_NEWS"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->OFFICIAL_NEWS:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "HOT_GAME"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "HOT_APP"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "HOT_THEME"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THEME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 16
    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "HOT_MUSIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_MUSIC:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "WEB_URL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->WEB_URL:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "ALBUM_APP"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->ALBUM_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const-string v1, "ALBUM_GAME"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->ALBUM_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 14
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const/4 v1, 0x0

    sget-object v2, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->OFFICIAL_NEWS:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THEME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_MUSIC:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->WEB_URL:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->ALBUM_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->ALBUM_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->$VALUES:[Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    .line 62
    new-instance v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType$1;-><init>()V

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 81
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    const/4 v1, 0x0

    sget-object v2, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->OFFICIAL_NEWS:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THEME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_MUSIC:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->WEB_URL:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->ALBUM_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->ALBUM_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->VALUES:[Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->index:I

    .line 99
    iput p4, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->value:I

    .line 100
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THREAD:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 38
    :pswitch_1
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->OFFICIAL_NEWS:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 40
    :pswitch_2
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 42
    :pswitch_3
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 44
    :pswitch_4
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_THEME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 46
    :pswitch_5
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->HOT_MUSIC:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 48
    :pswitch_6
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->WEB_URL:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 50
    :pswitch_7
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->ALBUM_APP:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 52
    :pswitch_8
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->ALBUM_GAME:Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->VALUES:[Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    return-object v0
.end method

.method public static values()[Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->$VALUES:[Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    invoke-virtual {v0}, [Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
