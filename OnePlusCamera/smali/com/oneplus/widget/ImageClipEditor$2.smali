.class Lcom/oneplus/widget/ImageClipEditor$2;
.super Lcom/oneplus/base/Handle;
.source "ImageClipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/ImageClipEditor;->suspendCenteringDisplayedClipRect()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ImageClipEditor;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ImageClipEditor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ImageClipEditor;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/oneplus/widget/ImageClipEditor$2;->this$0:Lcom/oneplus/widget/ImageClipEditor;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor$2;->this$0:Lcom/oneplus/widget/ImageClipEditor;

    invoke-static {v0, p0}, Lcom/oneplus/widget/ImageClipEditor;->-wrap0(Lcom/oneplus/widget/ImageClipEditor;Lcom/oneplus/base/Handle;)V

    .line 2019
    return-void
.end method
