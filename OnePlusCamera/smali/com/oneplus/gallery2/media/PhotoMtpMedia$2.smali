.class Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;
.super Ljava/lang/Object;
.source "PhotoMtpMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/PhotoMtpMedia;->checkAnimatable(Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;)V
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
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->val$handle:Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->val$handle:Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->val$handle:Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$CheckAnimatableHandle;->callback:Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->access$3(Lcom/oneplus/gallery2/media/PhotoMtpMedia;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;->onChecked(Lcom/oneplus/gallery2/media/PhotoMedia;Z)V

    .line 148
    return-void

    .line 146
    :cond_0
    return-void
.end method
