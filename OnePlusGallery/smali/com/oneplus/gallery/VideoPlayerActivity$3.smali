.class Lcom/oneplus/gallery/VideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$3;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$3;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$400(Lcom/oneplus/gallery/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAudioFocusChange() - Focus change: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$3;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$500(Lcom/oneplus/gallery/VideoPlayerActivity;)Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$3;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->start()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$600(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    goto :goto_0

    .line 148
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$3;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->abandonAudioFocus()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$700(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    .line 151
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$3;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$500(Lcom/oneplus/gallery/VideoPlayerActivity;)Z

    goto :goto_0
.end method
