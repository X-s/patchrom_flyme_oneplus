.class final Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;
.super Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NavBarVisibilityHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/Gallery;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/Gallery;ZI)V
    .locals 1
    .param p2, "isVisible"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 272
    iput-object p1, p0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->this$0:Lcom/oneplus/gallery/Gallery;

    .line 273
    const-string v0, "NavBarVisibility"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;-><init>(Lcom/oneplus/gallery/Gallery;Ljava/lang/String;ZI)V

    .line 274
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->this$0:Lcom/oneplus/gallery/Gallery;

    # invokes: Lcom/oneplus/gallery/Gallery;->restoreNavigationBarVisibility(Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/Gallery;->access$600(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;)V

    .line 281
    return-void
.end method
