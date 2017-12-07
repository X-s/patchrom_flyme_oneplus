.class final Lcom/android/server/display/ColorBalanceService$BinderService;
.super Landroid/hardware/display/IColorBalanceManager$Stub;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;

    .prologue
    .line 2921
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-direct {p0}, Landroid/hardware/display/IColorBalanceManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/ColorBalanceService;Lcom/android/server/display/ColorBalanceService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    return-void
.end method


# virtual methods
.method public sendMsg(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 2924
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/display/ColorBalanceService;->-wrap15(Lcom/android/server/display/ColorBalanceService;I)V

    .line 2923
    return-void
.end method

.method public setActiveMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 2928
    return-void
.end method

.method public setColorBalance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2937
    const/16 v0, -0x200

    if-ne p1, v0, :cond_0

    .line 2938
    return-void

    .line 2941
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get22(Lcom/android/server/display/ColorBalanceService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->-set15(Lcom/android/server/display/ColorBalanceService;I)I

    .line 2942
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 2936
    return-void
.end method

.method public setDefaultMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 2932
    return-void
.end method
