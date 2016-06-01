.class Lcom/oneplus/tuner/widget/MusicButton$1;
.super Ljava/lang/Object;
.source "MusicButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/widget/MusicButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/widget/MusicButton;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/widget/MusicButton;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/tuner/widget/MusicButton$1;->this$0:Lcom/oneplus/tuner/widget/MusicButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/oneplus/tuner/widget/MusicButton$1;->this$0:Lcom/oneplus/tuner/widget/MusicButton;

    # getter for: Lcom/oneplus/tuner/widget/MusicButton;->mIsPlaying:Z
    invoke-static {v0}, Lcom/oneplus/tuner/widget/MusicButton;->access$000(Lcom/oneplus/tuner/widget/MusicButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
