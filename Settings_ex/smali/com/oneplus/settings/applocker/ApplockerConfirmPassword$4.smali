.class Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$4;
.super Ljava/lang/Object;
.source "ApplockerConfirmPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->checkPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$4;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$4;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->handleNext()V
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    .line 211
    return-void
.end method
