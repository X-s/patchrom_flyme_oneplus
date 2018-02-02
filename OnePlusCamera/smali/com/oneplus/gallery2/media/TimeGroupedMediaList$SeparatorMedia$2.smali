.class Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$2;
.super Ljava/lang/Object;
.source "TimeGroupedMediaList.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$2;->this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;",
            "Lcom/oneplus/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$2;->this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->access$2(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$2;->this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->access$0(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;Z)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$2;->this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$2;->this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->access$3(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
