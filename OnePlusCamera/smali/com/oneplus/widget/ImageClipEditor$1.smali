.class Lcom/oneplus/widget/ImageClipEditor$1;
.super Ljava/lang/Object;
.source "ImageClipEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ImageClipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ImageClipEditor;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ImageClipEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ImageClipEditor;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/oneplus/widget/ImageClipEditor$1;->this$0:Lcom/oneplus/widget/ImageClipEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor$1;->this$0:Lcom/oneplus/widget/ImageClipEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 167
    return-void
.end method
