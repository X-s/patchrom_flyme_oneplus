.class Lcom/oneplus/gallery2/OPGalleryActivity$36;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;->updateSnackbarVisibility(Z)V
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
    .line 3183
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$36;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3187
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$36;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$4702(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;)Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    .line 3188
    return-void
.end method
