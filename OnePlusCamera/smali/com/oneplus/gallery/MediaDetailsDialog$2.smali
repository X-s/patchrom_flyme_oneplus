.class Lcom/oneplus/gallery/MediaDetailsDialog$2;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaDetailsDialog;->checkMediaInfoState()Z
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
    .line 112
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/MediaDetailsDialog;->-set0(Lcom/oneplus/gallery/MediaDetailsDialog;Z)Z

    .line 115
    return-void
.end method
