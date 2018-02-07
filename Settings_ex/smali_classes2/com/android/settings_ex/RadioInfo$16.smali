.class Lcom/android/settings_ex/RadioInfo$16;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1215
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$16;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    .line 1218
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$16;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get13(Lcom/android/settings_ex/RadioInfo;)I

    move-result v1

    if-eq v1, p3, :cond_0

    if-ltz p3, :cond_0

    .line 1219
    invoke-static {}, Lcom/android/settings_ex/RadioInfo;->-get12()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt p3, v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$16;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1, p3}, Lcom/android/settings_ex/RadioInfo;->-set6(Lcom/android/settings_ex/RadioInfo;I)I

    .line 1221
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$16;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get3(Lcom/android/settings_ex/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1222
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$16;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get15(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$16;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v2}, Lcom/android/settings_ex/RadioInfo;->-get13(Lcom/android/settings_ex/RadioInfo;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1217
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 1226
    return-void
.end method
