.class Lcom/android/settings_ex/sim/OPSimSettings$2;
.super Ljava/lang/Object;
.source "OPSimSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/OPSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/OPSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/OPSimSettings;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$2;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings$2;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # invokes: Lcom/android/settings_ex/sim/OPSimSettings;->startUpdateAvaiInfoThread()V
    invoke-static {v0}, Lcom/android/settings_ex/sim/OPSimSettings;->access$400(Lcom/android/settings_ex/sim/OPSimSettings;)V

    .line 245
    return-void
.end method
