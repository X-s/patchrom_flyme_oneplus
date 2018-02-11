.class Lcom/android/settings_ex/gestures/GestureSettings$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gestures/GestureSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gestures/GestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gestures/GestureSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/gestures/GestureSettings;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/gestures/GestureSettings$2;->this$0:Lcom/android/settings_ex/gestures/GestureSettings;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    if-ne p2, v4, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/settings_ex/gestures/GestureSettings$2;->this$0:Lcom/android/settings_ex/gestures/GestureSettings;

    invoke-static {v2}, Lcom/android/settings_ex/gestures/GestureSettings;->-get0(Lcom/android/settings_ex/gestures/GestureSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gestures/GesturePreference;

    .line 123
    .local v0, "pref":Lcom/android/settings_ex/gestures/GesturePreference;
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/gestures/GesturePreference;->setScrolling(Z)V

    goto :goto_0

    .line 125
    .end local v0    # "pref":Lcom/android/settings_ex/gestures/GesturePreference;
    .end local v1    # "pref$iterator":Ljava/util/Iterator;
    :cond_0
    if-nez p2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/gestures/GestureSettings$2;->this$0:Lcom/android/settings_ex/gestures/GestureSettings;

    invoke-static {v2}, Lcom/android/settings_ex/gestures/GestureSettings;->-get0(Lcom/android/settings_ex/gestures/GestureSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "pref$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gestures/GesturePreference;

    .line 127
    .restart local v0    # "pref":Lcom/android/settings_ex/gestures/GesturePreference;
    invoke-virtual {v0, v3}, Lcom/android/settings_ex/gestures/GesturePreference;->setScrolling(Z)V

    goto :goto_1

    .line 120
    .end local v0    # "pref":Lcom/android/settings_ex/gestures/GesturePreference;
    .end local v1    # "pref$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 133
    return-void
.end method
