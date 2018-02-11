.class Lcom/android/settings_ex/datausage/DataUsageList$5;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings_ex/datausage/CycleAdapter$SpinnerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/datausage/DataUsageList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/DataUsageList;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageList$5;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$5;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get4(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Lcom/android/settings_ex/datausage/CycleAdapter;)V
    .locals 1
    .param p1, "cycleAdapter"    # Lcom/android/settings_ex/datausage/CycleAdapter;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$5;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get4(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 218
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$5;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get4(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 223
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$5;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get4(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 233
    return-void
.end method
