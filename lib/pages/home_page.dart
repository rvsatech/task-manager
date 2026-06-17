import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F5F9),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'TaskMaster',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: const [
                      Text(
                        'Olá, Rian 👋',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        'Vamos organizar seu dia?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  const CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xFF2563EB),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              Container(
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        const Text(
                          'Progresso de hoje',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),

                          decoration: BoxDecoration(
                            color: const Color(0xFFEFF6FF),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: const Text(
                            '60%',
                            style: TextStyle(
                              color: Color(0xFF2563EB),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),

                      child: const LinearProgressIndicator(
                        value: 0.6,
                        minHeight: 8,
                        color: Color(0xFF2563EB),
                        backgroundColor: Color(0xFFE5E7EB),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: const [
                        Text(
                          '6 de 10 tarefas concluídas',
                          style: TextStyle(color: Colors.grey),
                        ),

                        Text(
                          'Continue assim!',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: const Color(0xFF2563EB),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Row(
                      children: [
                        Icon(Icons.auto_awesome, color: Colors.white, size: 18),

                        SizedBox(width: 8),

                        Text(
                          'Sugestão inteligente',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Que tal planejar 3 tarefas importantes para hoje?',
                      style: TextStyle(color: Colors.white),
                    ),

                    const SizedBox(height: 16),

                    SizedBox(
                      width: double.infinity,

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/details');
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF2563EB),
                        ),

                        child: const Text('Criar agora'),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    _tab('Hoje', true),
                    _tab('Semana', false),
                    _tab('Importante', false),
                    _tab('Concluídas', false),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: const [
                  Text(
                    'Tarefas de hoje',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    'Ver todas',
                    style: TextStyle(
                      color: Color(0xFF2563EB),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/focus');
                },
                child: _task('Estudar UX/UI', '18:00', 'ALTA', false),
              ),

              _task('Treino na academia', '20:00', 'MÉDIA', true),

              _task('Revisar projeto do Figma', '22:00', 'ALTA', false),

              _task('Organizar rotina da semana', '09:00', 'BAIXA', false),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF2563EB),
        onPressed: () {
          Navigator.pushNamed(context, '/details');
        },

        child: const Icon(Icons.add, color: Colors.white),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'INÍCIO'),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'CALENDÁRIO',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.timer_outlined),
            label: 'FOCO',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'PERFIL',
          ),
        ],
      ),
    );
  }

  static Widget _tab(String title, bool active) {
    return Container(
      margin: const EdgeInsets.only(right: 8),

      child: Chip(
        label: Text(title),

        backgroundColor: active ? const Color(0xFF2563EB) : Colors.white,

        labelStyle: TextStyle(color: active ? Colors.white : Colors.black),
      ),
    );
  }

  static Widget _task(String title, String hour, String priority, bool done) {
    Color priorityColor;
    Color priorityBg;

    switch (priority) {
      case 'ALTA':
        priorityColor = const Color(0xFFEF4444);
        priorityBg = const Color(0xFFFEE2E2);
        break;

      case 'MÉDIA':
        priorityColor = const Color(0xFFF59E0B);
        priorityBg = const Color(0xFFFEF3C7);
        break;

      default:
        priorityColor = const Color(0xFF94A3B8);
        priorityBg = const Color(0xFFF1F5F9);
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        children: [
          Icon(
            done ? Icons.check_box : Icons.check_box_outline_blank,
            color: done ? const Color(0xFF2563EB) : const Color(0xFFCBD5E1),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,

                      decoration: BoxDecoration(
                        color: priorityColor,
                        shape: BoxShape.circle,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          decoration: done ? TextDecoration.lineThrough : null,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 13,
                      color: Color(0xFF94A3B8),
                    ),

                    const SizedBox(width: 4),

                    Text(
                      hour,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF94A3B8),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),

                      decoration: BoxDecoration(
                        color: priorityBg,
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Text(
                        priority,
                        style: TextStyle(
                          color: priorityColor,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Icon(
            Icons.visibility_off_outlined,
            size: 18,
            color: Color(0xFF94A3B8),
          ),
        ],
      ),
    );
  }
}
