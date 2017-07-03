.class public final enum Lcom/oneplus/screenshot/longshot/state/LongshotState;
.super Ljava/lang/Enum;
.source "LongshotState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/screenshot/longshot/state/LongshotState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum EDIT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum MOVE_PREV:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_PREV:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum UNDO:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field public static final enum UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;


# instance fields
.field private mState:Lcom/oneplus/screenshot/longshot/state/BaseState;


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
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 6
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 7
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 8
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->EDIT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 9
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SAVE"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 10
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "MOVE_NEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 11
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "MOVE_PREV"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_PREV:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 12
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_FIRST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 13
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_BGNEXT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 14
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_BGOVER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 15
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_NEXT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 16
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_OVER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 17
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_LAST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 18
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_SLAST"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 19
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_ONE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 20
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_PREV"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_PREV:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 21
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_BGNEXT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 22
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_BGOVER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 23
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_NEXT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 24
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_OVER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 25
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_LAST"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 26
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_SLAST"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 27
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_ONE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 28
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "UNDO"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNDO:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 3
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/oneplus/screenshot/longshot/state/LongshotState;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->EDIT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_PREV:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_PREV:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNDO:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->$VALUES:[Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->mState:Lcom/oneplus/screenshot/longshot/state/BaseState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->$VALUES:[Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0}, [Lcom/oneplus/screenshot/longshot/state/LongshotState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 1
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->mState:Lcom/oneplus/screenshot/longshot/state/BaseState;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/BaseState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 48
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 1
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->mState:Lcom/oneplus/screenshot/longshot/state/BaseState;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 52
    return-void
.end method

.method public get()Lcom/oneplus/screenshot/longshot/state/BaseState;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->mState:Lcom/oneplus/screenshot/longshot/state/BaseState;

    return-object v0
.end method

.method public init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/screenshot/longshot/state/BaseState;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->mState:Lcom/oneplus/screenshot/longshot/state/BaseState;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->mState:Lcom/oneplus/screenshot/longshot/state/BaseState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/BaseState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
