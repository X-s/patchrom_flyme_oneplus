.class final Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;
.super Lcom/oneplus/base/Handle;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarStyleHandle"
.end annotation


# instance fields
.field public final isLightStyle:Z

.field final synthetic this$0:Lcom/oneplus/gallery2/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/GalleryActivity;Z)V
    .locals 1
    .param p2, "isLightStyle"    # Z

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;->this$0:Lcom/oneplus/gallery2/GalleryActivity;

    .line 184
    const-string v0, "StatusBarColor"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 185
    iput-boolean p2, p0, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;->isLightStyle:Z

    .line 186
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;->this$0:Lcom/oneplus/gallery2/GalleryActivity;

    # invokes: Lcom/oneplus/gallery2/GalleryActivity;->restoreStatusBarStyle(Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/GalleryActivity;->access$200(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;)V

    .line 193
    return-void
.end method
