.class final Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;
.super Lcom/oneplus/base/Handle;
.source "DirectoryMediaSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectoryMediaSetHandle"
.end annotation


# instance fields
.field final directoryMediaSet:Lcom/oneplus/gallery/media/DirectoryMediaSet;

.field final synthetic this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;Lcom/oneplus/gallery/media/DirectoryMediaSet;)V
    .locals 1
    .param p2, "mediaSet"    # Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    .line 76
    const-string v0, "Directory Media Set Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 77
    iput-object p2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;->directoryMediaSet:Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 78
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    # invokes: Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->unregisterDirectoryMediaSet(Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->access$600(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;)V

    .line 85
    return-void
.end method
