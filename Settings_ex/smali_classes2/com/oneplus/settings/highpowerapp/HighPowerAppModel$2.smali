.class Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;
.super Ljava/lang/Object;
.source "HighPowerAppModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;->this$0:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$2;->this$0:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-static {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->-wrap0(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V

    .line 61
    return-void
.end method
