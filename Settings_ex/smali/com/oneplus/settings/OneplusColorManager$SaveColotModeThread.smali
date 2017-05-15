.class Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;
.super Ljava/lang/Thread;
.source "OneplusColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OneplusColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveColotModeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OneplusColorManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OneplusColorManager;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;->this$0:Lcom/oneplus/settings/OneplusColorManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;->this$0:Lcom/oneplus/settings/OneplusColorManager;

    # invokes: Lcom/oneplus/settings/OneplusColorManager;->saveColorMode()V
    invoke-static {v0}, Lcom/oneplus/settings/OneplusColorManager;->access$100(Lcom/oneplus/settings/OneplusColorManager;)V

    .line 223
    return-void
.end method
