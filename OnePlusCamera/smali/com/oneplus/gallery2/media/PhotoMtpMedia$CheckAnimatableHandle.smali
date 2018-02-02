.class Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;
.super Lcom/oneplus/base/Handle;
.source "PhotoMtpMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/PhotoMtpMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAnimatableHandle"
.end annotation


# instance fields
.field public volatile callback:Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    const-string/jumbo v0, "CheckAnimatableHandle"

    .line 60
    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;->callback:Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;

    .line 62
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->access$1(Lcom/oneplus/gallery2/media/PhotoMtpMedia;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method
