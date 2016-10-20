## 結果
Dear Takuro Yamamoto

On behalf of the CPSNA 2016 Program Committee, I am delighted to inform you that your paper 4 "Lightweight Ruby Framework for Improving Embedded Software Efficiency" **has been accepted to appear at the conference as a SHORT paper** _(four pages at maximum, and extra two pages can be also purchased through the camera-ready submission)._

The reviews and comments on your paper are attached. The Program Committee worked hard to review all the submitted papers. Please repay their efforts by following their suggestions when you revise your paper.

The guideline of the camera-ready submission and its deadline will be notified shortly. In the meantime, please prepare for your final manuscript.

Once again, congratulations on your fine work. If you have any additional questions, please feel free to contact us.

Best regards,

--  
Shinpei Kato and Shun-ichi Azuma
PC Chairs for CPSNA 2016

## レビュー
### REVIEW 1
PAPER: 4  
TITLE: Lightweight Ruby Framework for Improving Embedded Software Efficiency  
AUTHORS: Takuro Yamamoto, Hiroshi Oyama and Takuya Azumi  

OVERALL EVALUATION: 1 (weak accept)

**----------- OVERALL EVALUATION -----------**  
The paper presents an extended framework of mruby on TECS. The framework implements a Bluetooth loader for mruby bytecode and a RiteVM scheduler. This is an interesting development that allows code development using the mruby scripting language on embedded systems with nearly native code efficiency and real-time supports. The paper describes the framework in detail and release a prototype system. Overall, the paper presents an interesting design.

- The intro says that mruby on TECS can achieve similar execution speed as C language. But later it is said that mruby on TECS "is not particularly efficient, and imposes a heavy burden on developers." Seems that the statements are contradictory.
    + 実行時間でなく作業効率がNot efficientと加える．既存のmruby on TECSはSDカードの抜き差しやマルチタスク処理のプログラミングが難しい．
- A case study application will further improve the quality of the paper. Volunteer system developers can be recruited to put the "improves software development efficiency" statement to test.
    + 具体的なアプリケーション例を加える．

### REVIEW 2
PAPER: 4  
TITLE: Lightweight Ruby Framework for Improving Embedded Software Efficiency  
AUTHORS: Takuro Yamamoto, Hiroshi Oyama and Takuya Azumi  

OVERALL EVALUATION: -1 (weak reject)

**----------- OVERALL EVALUATION -----------**  
The authors propose a framework aiming at improving the productivity and development efficiency of embedded systems applied to cyber physical systems.
Major and minor comments are reported in the following:
- Why “mruby” always start with a small “s”, even at the beginning of the sentence, whilst Ruby with capital “R”?
    + 無視．
- The abstract is confusing and unclear, since there are unexplained concepts and components (e.g., what is the “productivity of a cyber physical system”, what are “TOPPERS embedded components”, Ruby, and so on). 
    + アブストの量を増やす…
- The contribution is too vague (what means “improving development efficiency more than the current version”): the drawbacks of the current version are not explained or quantitative or qualitative comparisons assessing this improved efficiency are not mentioned.
    + コントリビューションの説明の量を増やす…
- Several important statements are just vaguely outlined without any proper reference or discussion, e.g., “Embedded systems are applied to the CPS and are expected to demonstrate high quality and performance”.
    + 無理矢理付け足した部分．説明を増やす？省く？
- The concept of “efficiency” has to be properly defined: authors appear to claim two conflicting statements: that mRuby on TECS is proposed to overcome shortfalls of current implementations, such as slow execution time and application on embedded systems, and that current implementations of mRuby are not efficient. This is confusing and should be clear, since the added value of the proposed approach relies on that.
    + 組込みソフトウェアの開発フェーズにおける作業効率を上げる
    + （マルチタスク処理が簡単になり，プログラミング効率が上がる）
- There are multiple repetitions of concepts (e.g., the proposed framework comprises RiteVM, and Bluetooth loader and so forth) without providing any useful and necessary detail to understand the real working mechanism and innovation brought by the framework. This RiteVM component is never properly explained: what is its task, why is it needed, what are potential drawbacks? There is not a cost/benefit analysis of the proposed framework, which apparently introduces further components. It seems that in both systems, the current one and the proposed one, mruby code (and also RiteVM in the proposed one) is stored; in the proposed framework, the rewriting is replaced by loading operation. Since RiteVM has to be configured and mruby programs stored seems to be compiled, it is not clear how the proposed framework can prevent rewriting the storage device when programs are modified.
    + 具体例が足りない．
    + 既存のフレームワークとの差を詳しく述べる．
    + AppとLibを分けていることを強調する（図を省かない？）
- In the experimental section, figures add only confusing info and should be improved and clearly commented.
    + 評価のコメントを変える

### REVIEW 3
PAPER: 4  
TITLE: Lightweight Ruby Framework for Improving Embedded Software Efficiency  
AUTHORS: Takuro Yamamoto, Hiroshi Oyama and Takuya Azumi  

OVERALL EVALUATION: 1 (weak accept)

**----------- OVERALL EVALUATION -----------**  
This paper presents a Ruby framework for efficient embedded systems development.
Considering the complex composition of cyber-physical systems, the presented framework is a useful contribution for this community.

- Having said that, the technical contribution of this paper is limited. There is very little comparison between the presented framework and existing work. The authors should discuss what is the technical advantage and originality of the presented framework more clearly and specifically.
    + 既存のフレームワークとの違い（techinical advantageやoriginality）を明らかにする．

### REVIEW 4
PAPER: 4  
TITLE: Lightweight Ruby Framework for Improving Embedded Software Efficiency  
AUTHORS: Takuro Yamamoto, Hiroshi Oyama and Takuya Azumi  

OVERALL EVALUATION: 1 (weak accept)

**----------- OVERALL EVALUATION -----------**  
This paper presents an enhancement of a system called "mruby on TECS". There are two main improvements. First,  programming of the embedded devices is much faster since the associated libraries are not downloaded with the App but can be obtained from the bytecode that were downloaded before on the storage/ROM. Second, a scheduler, RiteVM, is provided to enable execution of multiple mruby programs simultaneously.

Evaluation shows that there is substantial improvement in loading and compile time. There is also less overhead and variability in the scheduling.   

Some questions:
- Is that any limitation to the App that can be downloaded using this system since the required bytecode needs to be derived from the bytecode that were downloaded before on the storage/ROM? 
    + アプリケーションの制限
- The related work section simply list down the list of tools available. How does mruby on TECS compares to the other tools? Also, are the ideas/concepts being used or applicable to the other tools as well?
    + 表を省かない？
    + 他のツールに使えるのか-->VM方式なら使える
