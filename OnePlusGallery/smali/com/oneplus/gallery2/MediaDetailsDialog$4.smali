.class Lcom/oneplus/gallery2/MediaDetailsDialog$4;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$SizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaDetailsDialog;->onPrepareDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$4;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$4;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p2, p3}, Landroid/util/Size;-><init>(II)V

    # setter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$702(Lcom/oneplus/gallery2/MediaDetailsDialog;Landroid/util/Size;)Landroid/util/Size;

    .line 303
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$4;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # invokes: Lcom/oneplus/gallery2/MediaDetailsDialog;->checkMediaInfoReadyState()Z
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$800(Lcom/oneplus/gallery2/MediaDetailsDialog;)Z

    .line 304
    return-void
.end method
