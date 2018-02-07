.class public final enum Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f0e066c

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string/jumbo v1, "Introduction"

    const v3, 0x7f0e0981

    .line 206
    const v4, 0x7f0e0983

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 209
    new-instance v6, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string/jumbo v7, "NeedToConfirm"

    const v9, 0x7f0e0984

    .line 210
    const v10, 0x7f0e0986

    .line 211
    const v11, 0x7f0e0677

    .line 209
    invoke-direct/range {v6 .. v11}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 213
    new-instance v9, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string/jumbo v10, "ConfirmWrong"

    const v12, 0x7f0e0987

    .line 214
    const v13, 0x7f0e0988

    move v11, v15

    move v14, v5

    .line 213
    invoke-direct/range {v9 .. v14}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 203
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "hintInNumeric"    # I
    .param p5, "nextButtonText"    # I

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    iput p3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 219
    iput p4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 220
    iput p5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 217
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    const-class v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
