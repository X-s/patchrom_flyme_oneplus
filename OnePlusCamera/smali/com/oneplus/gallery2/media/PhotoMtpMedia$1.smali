.class Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;
.super Ljava/lang/Object;
.source "PhotoMtpMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/PhotoMtpMedia;->checkAnimatable(Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

.field private final synthetic val$handle:Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;->val$handle:Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;->val$handle:Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->access$2(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;)V

    .line 95
    return-void
.end method
