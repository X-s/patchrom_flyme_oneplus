.class Lcom/android/settings_ex/RadioInfo$9;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$9;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$9;->this$0:Lcom/android/settings_ex/RadioInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggle radio power: currently "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$9;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->-wrap0(Lcom/android/settings_ex/RadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings_ex/RadioInfo;->-wrap2(Lcom/android/settings_ex/RadioInfo;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$9;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->-get15(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1125
    return-void

    .line 1126
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method
