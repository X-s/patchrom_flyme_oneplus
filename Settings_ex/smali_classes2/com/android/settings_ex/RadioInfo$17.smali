.class Lcom/android/settings_ex/RadioInfo$17;
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
    .line 1231
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$17;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$17;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0, p3}, Lcom/android/settings_ex/RadioInfo;->-set0(Lcom/android/settings_ex/RadioInfo;I)I

    .line 1235
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$17;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->-get15(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {}, Lcom/android/settings_ex/RadioInfo;->-get0()[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$17;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->-wrap5(Lcom/android/settings_ex/RadioInfo;)V

    .line 1233
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 1239
    return-void
.end method
