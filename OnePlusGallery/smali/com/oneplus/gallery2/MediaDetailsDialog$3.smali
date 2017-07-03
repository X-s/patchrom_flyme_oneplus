.class Lcom/oneplus/gallery2/MediaDetailsDialog$3;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$DetailsCallback;


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
    .line 277
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$3;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsObtained(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/MediaDetails;)V
    .locals 1
    .param p1, "meida"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "details"    # Lcom/oneplus/gallery2/media/MediaDetails;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$3;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # invokes: Lcom/oneplus/gallery2/MediaDetailsDialog;->onMediaDetailsRetrieved(Lcom/oneplus/gallery2/media/MediaDetails;)V
    invoke-static {v0, p2}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$600(Lcom/oneplus/gallery2/MediaDetailsDialog;Lcom/oneplus/gallery2/media/MediaDetails;)V

    .line 282
    return-void
.end method
