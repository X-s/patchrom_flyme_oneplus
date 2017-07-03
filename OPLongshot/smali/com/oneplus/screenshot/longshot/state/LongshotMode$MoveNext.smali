.class Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;
.super Lcom/oneplus/screenshot/longshot/util/MovePoint;
.source "LongshotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveNext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;ILandroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p2, "distance"    # I
    .param p3, "start"    # Landroid/graphics/Point;
    .param p4, "end"    # Landroid/graphics/Point;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 541
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/util/MovePoint;-><init>(ILandroid/graphics/Point;Landroid/graphics/Point;)V

    .line 542
    return-void
.end method


# virtual methods
.method public canMove()Z
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->y:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    const-string v0, "Next"

    return-object v0
.end method

.method public isNext()Z
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x1

    return v0
.end method

.method public move()V
    .locals 2

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->getDistance()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;->offset(II)V

    .line 552
    return-void
.end method
