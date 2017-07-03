.class Lcom/oneplus/gallery/media/DirectoryMediaSetManager$2;
.super Ljava/lang/Object;
.source "DirectoryMediaSetManager.java"

# interfaces
.implements Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$2;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenamed(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "oldPath"    # Ljava/lang/String;
    .param p4, "newPath"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$2;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    # invokes: Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onRenamed(JLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->access$500(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
