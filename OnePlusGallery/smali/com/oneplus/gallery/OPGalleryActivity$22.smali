.class Lcom/oneplus/gallery/OPGalleryActivity$22;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$22;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 955
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$22;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->finish()V

    .line 956
    return-void
.end method
