.class final Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;
.super Ljava/lang/Object;
.source "PhotoMtpMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/PhotoMtpMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SizeObtainingTask"
.end annotation


# instance fields
.field public volatile isCancelled:Z

.field public volatile size:Landroid/util/Size;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;->this$0:Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->access$0(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V

    .line 47
    return-void
.end method
