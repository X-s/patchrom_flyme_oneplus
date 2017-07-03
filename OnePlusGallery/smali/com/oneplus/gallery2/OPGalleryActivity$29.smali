.class Lcom/oneplus/gallery2/OPGalleryActivity$29;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$29;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$29;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->finish()V

    .line 1309
    return-void
.end method
