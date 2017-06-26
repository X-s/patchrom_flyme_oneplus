.class Lcom/oneplus/settings/OPDisplaySettings$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "OPDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDisplaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/oneplus/settings/OPDisplaySettings$1;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$1;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->updateLockScreenRotation()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$000(Lcom/oneplus/settings/OPDisplaySettings;)V

    .line 204
    return-void
.end method
