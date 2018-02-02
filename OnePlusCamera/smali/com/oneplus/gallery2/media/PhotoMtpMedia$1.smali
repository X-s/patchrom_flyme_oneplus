.class Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;
.super Lcom/oneplus/base/CallbackHandle;
.source "PhotoMtpMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/PhotoMtpMedia;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/Media$SizeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    .line 74
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->verifyAccess()V

    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->access$1(Lcom/oneplus/gallery2/media/PhotoMtpMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method
