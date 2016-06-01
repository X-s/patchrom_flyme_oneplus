.class Lcom/oneplus/tuner/MixerActivity$13;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Lcom/oneplus/tuner/base/BaseActivity$MyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->configIsTitlebarOnlyOneMenuItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MixerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MixerActivity;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$13;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showDetail()V
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$13;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # invokes: Lcom/oneplus/tuner/MixerActivity;->showDetailDialog()V
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$1900(Lcom/oneplus/tuner/MixerActivity;)V

    .line 987
    return-void
.end method
