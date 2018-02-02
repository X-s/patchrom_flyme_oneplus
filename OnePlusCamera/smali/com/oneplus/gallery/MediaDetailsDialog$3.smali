.class Lcom/oneplus/gallery/MediaDetailsDialog$3;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$DetailsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaDetailsDialog;->show(Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaDetailsDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/MediaDetailsDialog;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog$3;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsObtained(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/MediaDetails;)V
    .locals 1
    .param p1, "meida"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "details"    # Lcom/oneplus/gallery2/media/MediaDetails;

    .prologue
    .line 398
    if-nez p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$3;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-static {v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->-wrap1(Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/gallery2/media/MediaDetails;

    move-result-object p2

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$3;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-static {v0, p2}, Lcom/oneplus/gallery/MediaDetailsDialog;->-set1(Lcom/oneplus/gallery/MediaDetailsDialog;Lcom/oneplus/gallery2/media/MediaDetails;)Lcom/oneplus/gallery2/media/MediaDetails;

    .line 401
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$3;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-static {v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->-wrap0(Lcom/oneplus/gallery/MediaDetailsDialog;)Z

    .line 396
    return-void
.end method
