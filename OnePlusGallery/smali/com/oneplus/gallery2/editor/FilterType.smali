.class public final enum Lcom/oneplus/gallery2/editor/FilterType;
.super Ljava/lang/Enum;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/editor/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_BINARY:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_CLEAR:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_COLD:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_FALL_1:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_FALL_2:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_FLUORESCENT:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_FOOD:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_GRAY:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_INK_1:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_INK_3:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_SALT_1:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_SALT_3:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_SEPIA:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_SIMPLE:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_SUMMER:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_TIME_3:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum COLOR_MATRIX_TWILIGHT:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_CLEAR:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_COLD:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_FALL_1:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_FALL_2:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_FLUORESCENT:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_FOOD:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_GRAY:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_INK_1:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_INK_3:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_SALT_1:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_SALT_3:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_SIMPLE:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_SUMMER:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_TIME_3:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NET_EASE_TWILIGHT:Lcom/oneplus/gallery2/editor/FilterType;

.field public static final enum NORMAL:Lcom/oneplus/gallery2/editor/FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NORMAL:Lcom/oneplus/gallery2/editor/FilterType;

    .line 6
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_SALT_1"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SALT_1:Lcom/oneplus/gallery2/editor/FilterType;

    .line 7
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_SALT_3"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SALT_3:Lcom/oneplus/gallery2/editor/FilterType;

    .line 8
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_SIMPLE"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SIMPLE:Lcom/oneplus/gallery2/editor/FilterType;

    .line 9
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_SUMMER"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SUMMER:Lcom/oneplus/gallery2/editor/FilterType;

    .line 10
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_GRAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_GRAY:Lcom/oneplus/gallery2/editor/FilterType;

    .line 11
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_TWILIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_TWILIGHT:Lcom/oneplus/gallery2/editor/FilterType;

    .line 12
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_TIME_3"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_TIME_3:Lcom/oneplus/gallery2/editor/FilterType;

    .line 13
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_INK_1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_INK_1:Lcom/oneplus/gallery2/editor/FilterType;

    .line 14
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_INK_3"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_INK_3:Lcom/oneplus/gallery2/editor/FilterType;

    .line 15
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_FALL_1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_FALL_1:Lcom/oneplus/gallery2/editor/FilterType;

    .line 16
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_FALL_2"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_FALL_2:Lcom/oneplus/gallery2/editor/FilterType;

    .line 17
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_CLEAR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_CLEAR:Lcom/oneplus/gallery2/editor/FilterType;

    .line 18
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_COLD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_COLD:Lcom/oneplus/gallery2/editor/FilterType;

    .line 19
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_FLUORESCENT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_FLUORESCENT:Lcom/oneplus/gallery2/editor/FilterType;

    .line 20
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_FOOD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_FOOD:Lcom/oneplus/gallery2/editor/FilterType;

    .line 21
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_SEPIA"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SEPIA:Lcom/oneplus/gallery2/editor/FilterType;

    .line 22
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "COLOR_MATRIX_BINARY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_BINARY:Lcom/oneplus/gallery2/editor/FilterType;

    .line 23
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_SALT_1"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_SALT_1:Lcom/oneplus/gallery2/editor/FilterType;

    .line 24
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_SALT_3"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_SALT_3:Lcom/oneplus/gallery2/editor/FilterType;

    .line 25
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_SIMPLE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_SIMPLE:Lcom/oneplus/gallery2/editor/FilterType;

    .line 26
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_SUMMER"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_SUMMER:Lcom/oneplus/gallery2/editor/FilterType;

    .line 27
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_GRAY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_GRAY:Lcom/oneplus/gallery2/editor/FilterType;

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_TWILIGHT"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_TWILIGHT:Lcom/oneplus/gallery2/editor/FilterType;

    .line 29
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_TIME_3"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_TIME_3:Lcom/oneplus/gallery2/editor/FilterType;

    .line 30
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_INK_1"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_INK_1:Lcom/oneplus/gallery2/editor/FilterType;

    .line 31
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_INK_3"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_INK_3:Lcom/oneplus/gallery2/editor/FilterType;

    .line 32
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_FALL_1"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_FALL_1:Lcom/oneplus/gallery2/editor/FilterType;

    .line 33
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_FALL_2"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_FALL_2:Lcom/oneplus/gallery2/editor/FilterType;

    .line 34
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_CLEAR"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_CLEAR:Lcom/oneplus/gallery2/editor/FilterType;

    .line 35
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_COLD"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_COLD:Lcom/oneplus/gallery2/editor/FilterType;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_FLUORESCENT"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_FLUORESCENT:Lcom/oneplus/gallery2/editor/FilterType;

    .line 37
    new-instance v0, Lcom/oneplus/gallery2/editor/FilterType;

    const-string v1, "NET_EASE_FOOD"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_FOOD:Lcom/oneplus/gallery2/editor/FilterType;

    .line 3
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/oneplus/gallery2/editor/FilterType;

    sget-object v1, Lcom/oneplus/gallery2/editor/FilterType;->NORMAL:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SALT_1:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SALT_3:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SIMPLE:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SUMMER:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_GRAY:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_TWILIGHT:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_TIME_3:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_INK_1:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_INK_3:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_FALL_1:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_FALL_2:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_CLEAR:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_COLD:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_FLUORESCENT:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_FOOD:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_SEPIA:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->COLOR_MATRIX_BINARY:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_SALT_1:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_SALT_3:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_SIMPLE:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_SUMMER:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_GRAY:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_TWILIGHT:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_TIME_3:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_INK_1:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_INK_3:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_FALL_1:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_FALL_2:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_CLEAR:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_COLD:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_FLUORESCENT:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/oneplus/gallery2/editor/FilterType;->NET_EASE_FOOD:Lcom/oneplus/gallery2/editor/FilterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/editor/FilterType;->$VALUES:[Lcom/oneplus/gallery2/editor/FilterType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/editor/FilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/oneplus/gallery2/editor/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/FilterType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/editor/FilterType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/oneplus/gallery2/editor/FilterType;->$VALUES:[Lcom/oneplus/gallery2/editor/FilterType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/editor/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/editor/FilterType;

    return-object v0
.end method
