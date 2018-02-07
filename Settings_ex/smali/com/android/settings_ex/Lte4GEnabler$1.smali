.class Lcom/android/settings_ex/Lte4GEnabler$1;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Lte4GEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/Lte4GEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/Lte4GEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/Lte4GEnabler;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/Lte4GEnabler$1;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 192
    const-string/jumbo v0, "Lte4GEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/Lte4GEnabler$1;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-static {v0}, Lcom/android/settings_ex/Lte4GEnabler;->-wrap0(Lcom/android/settings_ex/Lte4GEnabler;)V

    .line 189
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/Lte4GEnabler$1;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-static {v0}, Lcom/android/settings_ex/Lte4GEnabler;->-wrap1(Lcom/android/settings_ex/Lte4GEnabler;)V

    goto :goto_0
.end method
