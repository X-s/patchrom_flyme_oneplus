.class Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment$1;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment$1;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;

    check-cast p1, Lcom/oneplus/camera/ui/menu/MenuItem;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;->-wrap0(Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;Lcom/oneplus/camera/ui/menu/MenuItem;Z)V

    .line 209
    return-void
.end method
