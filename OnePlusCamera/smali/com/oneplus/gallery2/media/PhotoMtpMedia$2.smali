.class Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;
.super Ljava/lang/Object;
.source "PhotoMtpMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/PhotoMtpMedia;->obtainSize(Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

.field private final synthetic val$task:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->val$task:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;->val$task:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->access$2(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V

    .line 139
    return-void
.end method
