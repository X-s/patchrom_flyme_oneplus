.class public final enum Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;
.super Ljava/lang/Enum;
.source "SquareBlockTypeProto.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareBlockTypeProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "block_types"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final enum APP_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final APP_ALBUM_DETAIL_VALUE:I = 0x5

.field public static final enum APP_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final APP_ALBUM_LIST_VALUE:I = 0x6

.field public static final enum APP_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final APP_DETAIL_VALUE:I = 0x4

.field public static final enum FORUMS:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final FORUMS_VALUE:I = 0xd

.field public static final enum GAME_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final GAME_ALBUM_DETAIL_VALUE:I = 0x2

.field public static final enum GAME_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final GAME_ALBUM_LIST_VALUE:I = 0x3

.field public static final enum GAME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final GAME_DETAIL_VALUE:I = 0x1

.field public static final enum MUSIC_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final MUSIC_ALBUM_DETAIL_VALUE:I = 0x7

.field public static final enum MUSIC_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final MUSIC_ALBUM_LIST_VALUE:I = 0x8

.field public static final enum NEWTHEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final enum NEWTHEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final NEWTHEME_LIST_VALUE:I = 0xc

.field public static final NEWTHEME_VALUE:I = 0xb

.field public static final enum OUTER_URL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final OUTER_URL_VALUE:I = 0x11

.field public static final enum PAIKE_PIC:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final PAIKE_PIC_VALUE:I = 0x10

.field public static final enum PAIKE_THEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final PAIKE_THEME_VALUE:I = 0xf

.field public static final enum THEME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final THEME_DETAIL_VALUE:I = 0x9

.field public static final enum THEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final THEME_LIST_VALUE:I = 0xa

.field public static final enum THREAD:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field public static final THREAD_VALUE:I = 0xe

.field private static final VALUES:[Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;",
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
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "GAME_DETAIL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "GAME_ALBUM_DETAIL"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "GAME_ALBUM_LIST"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "APP_DETAIL"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    .line 16
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "APP_ALBUM_DETAIL"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "APP_ALBUM_LIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "MUSIC_ALBUM_DETAIL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->MUSIC_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    .line 17
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "MUSIC_ALBUM_LIST"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->MUSIC_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "THEME_DETAIL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THEME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "THEME_LIST"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    .line 18
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "NEWTHEME"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->NEWTHEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "NEWTHEME_LIST"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->NEWTHEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "FORUMS"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->FORUMS:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "THREAD"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THREAD:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    .line 19
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "PAIKE_THEME"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->PAIKE_THEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "PAIKE_PIC"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->PAIKE_PIC:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const-string v1, "OUTER_URL"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->OUTER_URL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    .line 14
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const/4 v1, 0x0

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->MUSIC_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->MUSIC_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THEME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->NEWTHEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->NEWTHEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->FORUMS:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THREAD:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->PAIKE_THEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->PAIKE_PIC:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->OUTER_URL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->$VALUES:[Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    .line 89
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types$1;-><init>()V

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 108
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    const/4 v1, 0x0

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->MUSIC_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->MUSIC_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THEME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->NEWTHEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->NEWTHEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->FORUMS:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THREAD:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->PAIKE_THEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->PAIKE_PIC:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->OUTER_URL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->VALUES:[Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->index:I

    .line 129
    iput p4, p0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->value:I

    .line 130
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 49
    :pswitch_1
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 51
    :pswitch_2
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->GAME_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 53
    :pswitch_3
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 55
    :pswitch_4
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 57
    :pswitch_5
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->APP_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 59
    :pswitch_6
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->MUSIC_ALBUM_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 61
    :pswitch_7
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->MUSIC_ALBUM_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 63
    :pswitch_8
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THEME_DETAIL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 65
    :pswitch_9
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 67
    :pswitch_a
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->NEWTHEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 69
    :pswitch_b
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->NEWTHEME_LIST:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 71
    :pswitch_c
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->FORUMS:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 73
    :pswitch_d
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->THREAD:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 75
    :pswitch_e
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->PAIKE_THEME:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 77
    :pswitch_f
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->PAIKE_PIC:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 79
    :pswitch_10
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->OUTER_URL:Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    goto :goto_0

    .line 45
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->VALUES:[Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    return-object v0
.end method

.method public static values()[Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->$VALUES:[Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    invoke-virtual {v0}, [Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareBlockTypeProto$block_types;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
