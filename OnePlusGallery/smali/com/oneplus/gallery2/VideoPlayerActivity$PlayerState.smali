.class final enum Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;
.super Ljava/lang/Enum;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

.field public static final enum IDLE:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

.field public static final enum PAUSE:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

.field public static final enum PLAY:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

.field public static final enum PREPARING:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

.field public static final enum READY:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->IDLE:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    .line 171
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->PREPARING:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    .line 172
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->READY:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    .line 173
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->PLAY:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    .line 174
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->PAUSE:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    .line 168
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->IDLE:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->PREPARING:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->READY:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->PLAY:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->PAUSE:Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->$VALUES:[Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

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
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->$VALUES:[Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/VideoPlayerActivity$PlayerState;

    return-object v0
.end method
