.class Lcom/android/settings_ex/datausage/AppDataUsage$1;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/AppDataUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/AppDataUsage;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$1;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$1;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get2(Lcom/android/settings_ex/datausage/AppDataUsage;)Lcom/android/settings_ex/datausage/SpinnerPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/datausage/SpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/datausage/CycleAdapter$CycleItem;

    .line 482
    .local v0, "cycle":Lcom/android/settings_ex/datausage/CycleAdapter$CycleItem;
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$1;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/AppDataUsage;->-wrap2(Lcom/android/settings_ex/datausage/AppDataUsage;)V

    .line 475
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$1;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->-wrap2(Lcom/android/settings_ex/datausage/AppDataUsage;)V

    .line 486
    return-void
.end method
